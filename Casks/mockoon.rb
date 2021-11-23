cask "mockoon" do
  version "1.16.0"
  sha256 "1021e9e6a34729186524b3b00abc8a6b8509cd2bc06f765d516f3b18a984c0da"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Utility to run mock APIs locally"
  homepage "https://mockoon.com/"

  auto_updates true

  app "Mockoon.app"
end
