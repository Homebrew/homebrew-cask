cask "dropbox-encore" do
  version "1.1b1"
  sha256 "ed1981700176599d6817a07bd26f75271d77d0fd6da616a66987a63d7cf8af36"

  url "https://www.joyofmacs.com/downloads/DropboxEncore#{version}.dmg"
  appcast "https://www.joyofmacs.com/software/dropboxencore/"
  name "Dropbox Encore"
  homepage "https://www.joyofmacs.com/software/dropboxencore/"

  app "Dropbox Encore.app"
end
