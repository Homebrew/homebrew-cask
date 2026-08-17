cask "profind" do
  version "1.41"
  sha256 "384dd212746d79c374143468974b4f65cc0c7ad57c25ac9dc0917c61046bf969"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.major_minor.no_dots}.dmg"
  name "ProFind"
  desc "File search app"
  homepage "https://www.zeroonetwenty.com/profind/"

  livecheck do
    url "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :big_sur

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
