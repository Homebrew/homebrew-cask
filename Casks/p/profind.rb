cask "profind" do
  version "1.42"
  sha256 "f4a794aba4fc9d9027a32aec00e988690226b19d4881f0318be411a9a1cfdd4c"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.major_minor.no_dots}.dmg"
  name "ProFind"
  desc "File search app"
  homepage "https://www.zeroonetwenty.com/profind/"

  livecheck do
    url "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "ProFind.app"

  uninstall launchctl: "com.zeroonetwenty.ProFindHelper",
            quit:      "com.zeroonetwenty.ProFind"

  zap trash: [
    "~/Library/Application Scripts/com.zeroonetwenty.ProFind",
    "~/Library/Application Support/com.zeroonetwenty.ProFind",
    "~/Library/Caches/com.zeroonetwenty.ProFind",
    "~/Library/HTTPStorages/com.zeroonetwenty.ProFind",
    "~/Library/Preferences/com.zeroonetwenty.ProFind.plist",
    "~/Library/Saved Application State/com.zeroonetwenty.ProFind.savedState",
  ]
end
