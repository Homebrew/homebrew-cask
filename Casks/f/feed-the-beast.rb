cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x64"

  version "1.27.2"
  sha256 arm:   "28fd3c16d886edae188423842b8ebaadf61d6e976d2ded3aac0842e15013517f",
         intel: "f28b00324afbca50b144c8c113e86e989db3d33c981ffbb8a5c31753489374dc"

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
