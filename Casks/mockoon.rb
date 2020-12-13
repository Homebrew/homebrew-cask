cask "mockoon" do
  version "1.11.0"
  sha256 "4b9eac48eb75d176f92eec1101147135d2a7eadd771c81fca715537ac2f0d43c"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg",
      verified: "github.com/mockoon/mockoon/"
  appcast "https://github.com/mockoon/mockoon/releases.atom"
  name "Mockoon"
  desc "Utility to run mock APIs locally"
  homepage "https://mockoon.com/"

  auto_updates true

  app "Mockoon.app"
end
