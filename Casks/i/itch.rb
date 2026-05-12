cask "itch" do
  arch arm: "arm64", intel: "amd64"

  version "26.11.0"
  sha256 arm:   "0fbe414ecdfb648d1c53fe24a0ee813b81b17d6617401a672341630576aafbf8",
         intel: "2120463c51c24e3465155fd4229bc472425a3d36a6e4eb279019cbfc93a6c56b"

  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-v#{version}-darwin-#{arch}.tar.gz",
      verified: "github.com/itchio/itch/"
  name "itch"
  desc "Game client for itch.io"
  homepage "https://itch.io/app"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "itch.app"

  uninstall quit: "io.itch.mac"

  zap trash: [
    "~/Library/Application Support/itch",
    "~/Library/Preferences/io.itch.mac.helper.plist",
    "~/Library/Preferences/io.itch.mac.plist",
  ]
end
