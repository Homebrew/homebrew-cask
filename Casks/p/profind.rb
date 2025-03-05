cask "profind" do
  version "1.29"
  sha256 "748a1bf58cffefc5e5691b2b6eccd2bb09286d434f772fca25b2c5957542a329"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.major_minor.no_dots}.dmg"
  name "ProFind"
  desc "File search app"
  homepage "https://www.zeroonetwenty.com/profind/"

  livecheck do
    url "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "ProFind.app"

  zap trash: [
    "~/Library/Application Scripts/com.zeroonetwenty.ProFind",
    "~/Library/Application Support/com.zeroonetwenty.ProFind",
    "~/Library/Caches/com.zeroonetwenty.ProFind",
    "~/Library/Preferences/com.zeroonetwenty.ProFind.plist",
    "~/Library/Saved Application State/com.zeroonetwenty.ProFind.savedState",
  ]
end
