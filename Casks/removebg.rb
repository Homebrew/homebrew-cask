cask "removebg" do
  version "1.3.0"
  sha256 "c10bf3b7a79dba32903628de1454fd1c884b69a3105276b79d042d56e57fbd1a"

  url "https://static.remove.bg/download/removebg-for-mac-#{version}.dmg"
  appcast "https://www.remove.bg/windows-mac-linux/download"
  name "remove.bg"
  homepage "https://www.remove.bg/"

  app "remove.bg.app"
end
