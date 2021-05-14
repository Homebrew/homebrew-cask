cask "raiderio" do
  version "2.1.3"
  sha256 "62760510cb2062ea95a4bd1c92d5aeddb66990251bbd1ec66d4291570a07cd7b"

  url "https://github.com/RaiderIO/raiderio-client-builds/releases/download/v#{version}/RaiderIO_Client.dmg",
      verified: "github.com/RaiderIO/raiderio-client-builds/"
  name "RaiderIO Client"
  desc "World of Warcraft rankings site client"
  homepage "https://raider.io/"

  app "RaiderIO.app"
end
