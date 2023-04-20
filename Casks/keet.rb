cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "1.2.2"
  sha256  arm:   "1137a41339a483c2135ab2af37736635744d5ae78ddfc6e6d7a7b3f5cf086527",
          intel: "727f590dc1b768632dc5528ae7e5012f94388b6e2167a89417156c89bd3637d6"

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
