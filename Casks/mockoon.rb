cask "mockoon" do
  version "1.14.0"
  sha256 "5c6b1560d20c5315275d4d475f5baabb9219f76a5b4af5de54421a3050e6c8a9"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Utility to run mock APIs locally"
  homepage "https://mockoon.com/"

  auto_updates true

  app "Mockoon.app"
end
