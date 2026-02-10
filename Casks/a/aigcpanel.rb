cask "aigcpanel" do
  arch arm: "arm64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "91347fbd1ceba3b8219f6915633d66b40a14d2ee9c503b4559e933e984a2003a",
         intel: "b00494d98461bd0709390bbff4537ed8daa22b56bd94aef367e65d0bf3f98bb2"

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

  app "AigcPanel.app"

  zap trash: [
    "~/Library/Application Support/aigcpanel",
    "~/Library/Preferences/AigcPanel.plist",
    "~/Library/Saved Application State/AigcPanel.savedState",
  ]
end
