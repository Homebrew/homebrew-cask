cask "dynobase" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1,221204n6n4soe1v"
  sha256 arm:   "e9b221dfbbdef1bb6ec233d39e027ab00995547f6b2f6cef8839af8692faf795",
         intel: "e238923233ae468959b40b31979e6d5a65871ad697087cb953e451144bbca36a"

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
