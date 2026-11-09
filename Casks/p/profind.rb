cask "profind" do
  version "1.43"
  sha256 "5101a7d7019f7e5fc4711da3156ca35e2d05c55d7948687efef06a3e2c917a3e"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.major_minor.no_dots}.dmg"
  name "ProFind"
  desc "File search app"
  homepage "https://www.zeroonetwenty.com/profind/"

  livecheck do
    url "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

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
