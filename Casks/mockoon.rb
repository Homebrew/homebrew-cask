cask "mockoon" do
  version "1.14.1"
  sha256 "1cb5ace608f6229a8bb2de2a0e3866d6bbe81868609bf48b84de3edefef9fd74"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Utility to run mock APIs locally"
  homepage "https://mockoon.com/"

  auto_updates true

  app "Mockoon.app"
end
