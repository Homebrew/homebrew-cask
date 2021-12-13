cask "freac" do
  version "1.1.5,a"

  if MacOS.version <= :catalina
    sha256 "0e3d14e789b6d413db519348bfdade657af4324054ac3a47f6b389131422f1d7"

    url "https://github.com/enzo1982/freac/releases/download/v#{version.csv.first}/freac-#{version.delete(",")}-macos10.dmg",
        verified: "github.com/enzo1982/freac/"
  else
    sha256 "131b4037c90d996e2a798ec62a413aeefffbc7ee02d1616b807bd0708c3c8854"

    url "https://github.com/enzo1982/freac/releases/download/v#{version.csv.first}/freac-#{version.delete(",")}-macos11.dmg",
        verified: "github.com/enzo1982/freac/"
  end

  name "fre:ac"
  desc "Audio converter and CD ripper"
  homepage "https://www.freac.org/"

  app "freac.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.freac.freac.sfl*",
    "~/Library/Preferences/org.freac.freac.plist",
    "~/Library/Saved Application State/org.freac.freac.savedState",
  ]
end
