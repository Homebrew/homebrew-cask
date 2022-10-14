cask "dynobase" do
  arch arm: "arm64", intel: "x64"

  version "2.0.2,220923souexs12u"
  sha256 arm:   "20fc6f722a79ab0dda2bfb0fe43f3a4a24c22631190f48a06c1939766a05439c",
         intel: "3f6afd1f5f8bb67eabb69326af6df70d1b179baa1c50fa3e7365ee76284a01a5"

  url "https://github.com/Dynobase/dynobase/releases/download/v#{version.csv.first}/Dynobase.#{version.csv.first}.-.Build.#{version.csv.second}-#{arch}.dmg",
      verified: "github.com/Dynobase/dynobase/"
  name "Dynobase"
  desc "GUI Client for DynamoDB"
  homepage "https://dynobase.dev/"

  livecheck do
    url "https://github.com/Dynobase/dynobase/releases/latest"
    regex(/Dynobase[._-](\d+(?:\.\d+)+)[._-]+Build[._-](\S+)[._-]#{arch}\.dmg/i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "Dynobase.app"

  zap trash: [
    "~/Library/Application Support/dynobase",
    "~/Library/Saved Application State/com.rwilinski.dynobase.savedState",
  ]
end
