cask "mockoon" do
  version "1.13.0"
  sha256 "f75d062fde70bfe7708568a35aa1869dcda4df45136b03652b2e9725531760a9"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Utility to run mock APIs locally"
  homepage "https://mockoon.com/"

  auto_updates true

  app "Mockoon.app"
end
