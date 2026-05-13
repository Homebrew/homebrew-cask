cask "keet" do
  arch intel: "-Intel"

  version "4.14.2"
  sha256 arm:   "51f60bf31978f40a1e22f8185db0b3f707866d15f9058a1cd0decc5029ba34d9",
         intel: "114d2e280a7d35abf3386eea5d7371d94279ca36f17b3869bfaf916b74bbea13"

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
