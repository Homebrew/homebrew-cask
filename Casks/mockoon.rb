cask "mockoon" do
  version "1.10.0"
  sha256 "9c9a95a7ae30beb0a3c0e10095e78819a2bf54f69d8348aeda4b19e826d39b52"

  # github.com/mockoon/mockoon/ was verified as official when first introduced to the cask
  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.dmg"
  appcast "https://github.com/mockoon/mockoon/releases.atom"
  name "Mockoon"
  desc "Utility to run mock APIs locally"
  homepage "https://mockoon.com/"

  auto_updates true

  app "Mockoon.app"
end
