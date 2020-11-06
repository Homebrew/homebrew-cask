cask "augur" do
  version "1.16.11"
  sha256 "127a57ed9e3e0b2bd0451f0b097d5998f3e59acb7c4b9d424166f460a1776411"

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast "https://github.com/AugurProject/augur-app/releases.atom"
  name "Augur"
  desc "App that bundles Augur UI and ugur Node together and deploys them locally"
  homepage "https://github.com/AugurProject/augur-app/"

  app "augur.app"
end
