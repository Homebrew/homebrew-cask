cask "aigcpanel" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "59c286b420db9ebe3fd6cc94b8e4374e47c496909851a77363c26e318a330608",
         intel: "a36ef1a5f6325dbfa07bed5952cbdeff85e74ce929e2b02e3d67c23307473610"

  url "https://github.com/modstart-lib/aigcpanel/releases/download/v#{version.csv.first}/AigcPanel-#{version.csv.second || version.csv.first}-mac-#{arch}.dmg",
      verified: "github.com/modstart-lib/aigcpanel/"
  name "AigcPanel"
  desc "AI video, audio and broadcast generator"
  homepage "https://aigcpanel.com/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/AigcPanel[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]#{arch}\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        (match[2] == match[1]) ? match[1] : "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :catalina"

  app "AigcPanel.app"

  zap trash: [
    "~/Library/Application Support/aigcpanel",
    "~/Library/Preferences/AigcPanel.plist",
    "~/Library/Saved Application State/AigcPanel.savedState",
  ]
end
