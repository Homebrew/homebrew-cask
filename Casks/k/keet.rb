cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "2.2.0"
  sha256  arm:   "08167bbc5b449e1faf3c99083135853fb36c47a92daae35aca197fd1b7d0e6f6",
          intel: "e0ae3436fe3bc36b9b1c2500a314dc0b368e2bf26f1d51666f4f5316e372cd53"

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
