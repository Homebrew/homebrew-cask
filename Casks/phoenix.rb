cask "phoenix" do
  version "2.6.4"
  sha256 "11729a1e9abddccc53041ce34969f0b120642df4b94bb1c884409eebe64c75a2"

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
