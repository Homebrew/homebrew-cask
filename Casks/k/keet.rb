cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "2.6.0"
  sha256 arm:   "db417e3639b5b647b9d6991301b1cb6b6ee3706b0aeac03fcb6bca471a6c66d2",
         intel: "6c2b868d93d6c9176a3912aaa391c1fd3d49d3652ab762ccaf82b1931e4309fc"

  url "https://static.keet.io/downloads/#{version}/Keet-#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://static.keet.io/downloads/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  auto_updates true

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
