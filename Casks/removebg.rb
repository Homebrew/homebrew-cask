cask "removebg" do
  version "1.4.1"
  sha256 "ec7e974c6f3e7c6d5b0e8181a4bf1b8a473ff872ea7d34f1339fa8ff104e59af"

  url "https://static.remove.bg/download/removebg-for-mac-#{version}.dmg"
  appcast "https://www.remove.bg/windows-mac-linux/download"
  name "remove.bg"
  homepage "https://www.remove.bg/"

  app "remove.bg.app"
end
