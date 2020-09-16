cask "mumble" do
  version "1.3.2"
  sha256 "badd93282e0a9bdca88f769ab9f0172dd275ae4dc5eeb3a85321941837a8c760"

  # github.com/mumble-voip/mumble/ was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast "https://github.com/mumble-voip/mumble/releases.atom"
  name "Mumble"
  desc "Open-source, low-latency, high quality voice chat software for gaming"
  homepage "https://wiki.mumble.info/wiki/Main_Page"

  app "Mumble.app"
end
