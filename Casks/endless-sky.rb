cask "endless-sky" do
  version "0.9.16.1"
  sha256 "0d0aa0f6c856263b5113eed33d532dc147631b8bb6e30f4dc6fdda2a0af297f6"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macos-v#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  app "EndlessSky.app"
end
