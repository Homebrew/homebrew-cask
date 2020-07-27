cask "komodo-ide" do
  version "12.0.1,91869"
  sha256 "44690ebf9395899cffab48b1c8ca7adb5abbb1cb9a47672e3303d79ba5392eb8"

  url "https://downloads.activestate.com/Komodo/releases/#{version.before_comma}/Komodo-IDE-#{version.before_comma}-#{version.after_comma}-macosx-x86_64.dmg"
  appcast "https://www.activestate.com/komodo-ide/downloads/ide"
  name "Komodo IDE"
  homepage "https://www.activestate.com/komodo-ide/"

  app "Komodo IDE #{version.major}.app"
end
