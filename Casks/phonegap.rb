cask "phonegap" do
  version "0.4.5"
  sha256 "1158660f45637593d7721f2d50f2792ac8b1744950a37ca8072f29c9922efdf6"

  url "https://github.com/phonegap/phonegap-app-desktop/releases/download/#{version}/PhoneGapDesktop.dmg",
      verified: "github.com/phonegap/phonegap-app-desktop/"
  appcast "https://github.com/phonegap/phonegap-app-desktop/releases.atom"
  name "PhoneGap"
  homepage "https://phonegap.com/"

  app "PhoneGap.app"
end
