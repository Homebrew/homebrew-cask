cask "freac" do
  version "1.1.4"

  if MacOS.version <= :catalina
    sha256 "c62588c0afe34cb1163968b5432bd9deb84bd75be8f8f3b7cc292884d735af9b"
    url "https://github.com/enzo1982/freac/releases/download/v#{version}/freac-#{version}-macos10.dmg",
        verified: "github.com/enzo1982/freac/"
  else
    sha256 "d5d961798b695569f7636e8b4c0dcf8ac8a5a7d6e57d0c85985f2cb51c936476"
    url "https://github.com/enzo1982/freac/releases/download/v#{version}/freac-#{version}-macos11.dmg",
        verified: "github.com/enzo1982/freac/"
  end

  appcast "https://github.com/enzo1982/freac/releases.atom"
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
