cask "feed-the-beast" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x64"

  version "1.29.4"
  sha256 arm:   "5611137adece4d82828c60d16c4fc565f474e10281371c999ba9243ba2177b62",
         intel: "2b7f8d02e3d30baa4f8969161d783fc6d9c0b8f3d49e4f052309a95be21b003c"

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
  depends_on macos: ">= :big_sur"

  app "FTB Electron App.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.ftb.app.sfl*",
    "~/Library/Application Support/FTB Electron App",
    "~/Library/Logs/FTB Electron App",
    "~/Library/Preferences/dev.ftb.app.plist",
    "~/Library/Saved Application State/dev.ftb.app.savedState",
  ]
end
