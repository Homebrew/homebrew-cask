cask "dynobase" do
  arch arm: "arm64", intel: "x64"

  version "2.2.1,230111zkqw3z8qf"
  sha256 arm:   "afa14f4121f13fec9da348587583b5eecb96165e1e7d95df2a952287f22d444c",
         intel: "b1dcbf568db108e3ef8ee7ed243e67b1c63c5c0638c441032fd192551d529f32"

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
