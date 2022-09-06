cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "1.1.0"
  sha256  arm:   "20f22af8f9546c7431a1a653ac6fdab3eed6b2c3d48c03d865d948852f071f55",
          intel: "1d2afbe8e1df0b640d7527cb0a6a3bb8fafa6c026b6f4aa1137f7ca3dd619956"

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
