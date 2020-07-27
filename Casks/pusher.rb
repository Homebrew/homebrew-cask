cask "pusher" do
  version "0.7.5"
  sha256 "b329a5106b6670bf50da4b91ba34d82102edb70074828cf4d0cd879b1a5e2180"

  url "https://github.com/noodlewerk/NWPusher/releases/download/#{version}/pusher.app.zip"
  appcast "https://github.com/noodlewerk/NWPusher/releases.atom"
  name "NWPusher"
  homepage "https://github.com/noodlewerk/NWPusher"

  app "Pusher.app"
end
