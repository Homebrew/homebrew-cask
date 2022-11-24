cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "1.2.0"
  sha256  arm:   "cf4947df82f27c9510bb51d2162769f05329eafe1b05670d1b7445960cbfb479",
          intel: "f02da61de7111c2b90d8ad7c77dca9f74f210d210778176ca38c0ec36ddd7d92"

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
