cask "freac" do
  version "1.1.5"

  if MacOS.version <= :catalina
    sha256 "0e3d14e789b6d413db519348bfdade657af4324054ac3a47f6b389131422f1d7"

    url "https://github.com/enzo1982/freac/releases/download/v#{version}/freac-#{version}-macos10.dmg",
        verified: "github.com/enzo1982/freac/"
  else
    sha256 "3c310de32cbb5827deac721f758446556dfa4e19e9d345360b8250d1bb0d23a1"

    url "https://github.com/enzo1982/freac/releases/download/v#{version}/freac-#{version}-macos11.dmg",
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
