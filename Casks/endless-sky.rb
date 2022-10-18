cask "endless-sky" do
  version "0.9.16"
  sha256 "18f280dde67ed0776d8753bbdc8575a923e9dca3434c51fd79f93d3f2f347b4e"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macos-v#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  app "EndlessSky.app"
end
