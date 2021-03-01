cask "pyzo" do
  version "4.11.2"
  sha256 "3a0d2b25988bd27e13857265926ff28851240c17d5d07063b5e23b389cfa1a14"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos.dmg",
      verified: "github.com/pyzo/pyzo/"
  appcast "https://github.com/pyzo/pyzo/releases.atom"
  name "Pyzo"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
