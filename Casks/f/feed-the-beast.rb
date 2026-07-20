cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x64"

  version "1.30.0"
  sha256 arm:   "2af5e53b8e4eaf340e6a0e427d002e2f1591e92e740aa6ff9c38c1f9ef3ba3d6",
         intel: "bd52268023e2df9625457ea4d2182008d0c5c7033d53cf910ca3f6fd8a7c9158"

  url "https://piston.feed-the-beast.com/app/ftb-app-macos-#{version}-#{arch}.dmg"
  name "Feed the Beast"
  desc "Minecraft mod downloader and manager"
  homepage "https://www.feed-the-beast.com/"

  livecheck do
    url "https://api.feed-the-beast.com/v1/meta/app/versions"
    regex(/ftb[._-]app[._-]macos[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :json do |json, regex|
      match = json.dig("macos", livecheck_arch, "dmg", "url")&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "FTB Electron App.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.ftb.app.sfl*",
    "~/Library/Application Support/FTB Electron App",
    "~/Library/Logs/FTB Electron App",
    "~/Library/Preferences/dev.ftb.app.plist",
    "~/Library/Saved Application State/dev.ftb.app.savedState",
  ]
end
