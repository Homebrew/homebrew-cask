cask "endless-sky" do
  version "0.9.12"
  sha256 "4b6a4e45b173fd986ae9fab775267795361befb3f68ac6b9cb6517f69eee22aa"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macos-#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  appcast "https://github.com/endless-sky/endless-sky/releases.atom"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  app "Endless Sky.app"
end
