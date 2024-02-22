cask "stoplight-studio" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0,9586.git-8c1d2e0"
  sha256 arm:   "4f50b5d98c84b30a166fe6f2735fcef8dd1d7ecb46c8d83f97cd77dc4c8ff3cc",
         intel: "0c27f3f92f3a48ee6f8180f0d30ccc6fa9c511a17857e15b74aa470b2c30e6c8"

  url "https://github.com/stoplightio/studio/releases/download/v#{version.csv.first}-stable.#{version.csv.second}/stoplight-studio-mac-#{arch}.dmg",
      verified: "github.com/stoplightio/studio/"
  name "Stoplight Studio"
  desc "Editor for designing and documenting APIs"
  homepage "https://stoplight.io/studio/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)[._-]stable[._-]([^/]+)/stoplight[._-]studio[._-]mac[._-]#{arch}\.dmg$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "Stoplight Studio.app"

  zap trash: [
    "~/Library/Application Support/Stoplight Studio",
    "~/Library/Logs/Stoplight Studio",
    "~/Library/Preferences/com.stoplight.studio.plist",
    "~/Library/Saved Application State/com.stoplight.studio.savedState",
  ]
end
