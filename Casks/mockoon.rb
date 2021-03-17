cask "mockoon" do
  version "1.12.0"
  sha256 "f5455106d0f462953859464e6dc007fae382890052b058533177cd708c243f6c"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg",
      verified: "github.com/mockoon/mockoon/"
  appcast "https://github.com/mockoon/mockoon/releases.atom"
  name "Mockoon"
  desc "Utility to run mock APIs locally"
  homepage "https://mockoon.com/"

  auto_updates true

  app "Mockoon.app"
end
