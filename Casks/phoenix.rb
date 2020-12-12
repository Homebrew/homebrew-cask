cask "phoenix" do
  version "2.6.5"
  sha256 "bdaddd3c66710679397e620278b30eff09fe4be3fd0ecda30ccb537e04dc82dd"

  url "https://github.com/kasper/phoenix/releases/download/#{version}/phoenix-#{version}.tar.gz"
  appcast "https://github.com/kasper/phoenix/releases.atom"
  name "Phoenix"
  homepage "https://github.com/kasper/phoenix/"

  depends_on macos: ">= :yosemite"

  app "Phoenix.app"

  zap trash: [
    "~/.phoenix.js",
    "~/Library/Application Support/Phoenix/storage.json",
  ]
end
