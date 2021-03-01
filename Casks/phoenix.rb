cask "phoenix" do
  version "2.6.6"
  sha256 "d860328b044518a609b8b29cd38b505d63840eed79f67f68b7453b5dda12999f"

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
