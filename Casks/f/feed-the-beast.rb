cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x64"

  version "1.27.3"
  sha256 arm:   "28e22bd69c0a946d6487156a77b344f3e382471cda179c481d146b5f71abe717",
         intel: "2a24f5e5b986c76ebc5761001b0a586284b9957728420889fac18550f795ea8c"

  url "https://piston.feed-the-beast.com/app/ftb-app-macos-#{version}-#{arch}.dmg"
  name "Feed the Beast"
  desc "Minecraft mod downloader and manager"
  homepage "https://www.feed-the-beast.com/"

  livecheck do
    url "https://meta.feed-the-beast.com/v1/app/versions"
    regex(/ftb[._-]app[._-]macos[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :json do |json, regex|
      match = json.dig("macos", livecheck_arch, "dmg", "url")&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "FTB Electron App.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.ftb.app.sfl*",
    "~/Library/Application Support/FTB Electron App",
    "~/Library/Logs/FTB Electron App",
    "~/Library/Preferences/dev.ftb.app.plist",
    "~/Library/Saved Application State/dev.ftb.app.savedState",
  ]
end
