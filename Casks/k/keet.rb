cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "2.0.0"
  sha256  arm:   "5a3a5abde40125e3546885b7332598c62fd703d1fabd5d075ed498d95983ab69",
          intel: "1cbe7b4d36f114ba6ca2eef9b657ef6177d098189cc0c1b4d62e14d4a96031c9"

  url "https://keet.io/downloads/#{version}/Keet-#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://keet.io/downloads/"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  app "Keet.app"
end
