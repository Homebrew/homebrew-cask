cask "keet" do
  arch intel: "-Intel"

  version "4.16.0"
  sha256 arm:   "d5eec8de0490232e39d5f14c514313722a171ce7103cbb6afe62d19fe58c0768",
         intel: "df426d0f1a937f5e870af0f379f86321d82838e4cd22d01602bdf4f5d4054f10"

  url "https://static.keet.io/downloads/#{version}/Keet#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://static.keet.io/downloads/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
