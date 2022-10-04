cask "endless-sky" do
  version "0.9.15"
  sha256 "52d6588c32e263182fbae591d9faeced098e2f7526e874cc731f6dacedf1804d"

  url "https://github.com/endless-sky/endless-sky/releases/download/v#{version}/endless-sky-macos-v#{version}.dmg",
      verified: "github.com/endless-sky/endless-sky/"
  name "Endless Sky"
  desc "Space exploration, trading, and combat game"
  homepage "https://endless-sky.github.io/"

  app "EndlessSky.app"
end
