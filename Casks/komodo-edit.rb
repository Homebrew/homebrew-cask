cask "komodo-edit" do
  version "12.0.1,18441"
  sha256 "68811e8c5d28a3a2ec9a390a36b8b07c81c0ff1f129c02f1349e106490fae6e3"

  url "https://downloads.activestate.com/Komodo/releases/#{version.before_comma}/Komodo-Edit-#{version.before_comma}-#{version.after_comma}-macosx-x86_64.dmg"
  appcast "https://www.activestate.com/komodo-ide/downloads/edit"
  name "Komodo Edit"
  homepage "https://www.activestate.com/komodo-edit/"

  app "Komodo Edit #{version.major}.app"
end
