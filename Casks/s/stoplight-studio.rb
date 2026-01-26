cask "stoplight-studio" do
  arch arm: "arm64", intel: "x64"

  version "2.10.0,9587.git-0533c10"
  sha256 arm:   "4e2d57b4cb6471995af03e770bdec2900c8c97ebffc61beb731d47611aba24ee",
         intel: "a9c66e62b966cdcfe7e383c68fefef71f220bd7466014a24b5a1918fd2650475"

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
