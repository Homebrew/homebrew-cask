cask "internxt-drive" do
  version "1.1.9"
  sha256 "31b8266747f286cdaeb021a84a804cbe952e2445950f4ab220869c1d343ed49d"

  # github.com/internxt/drive-desktop was verified as official when first introduced to the cask
  url "https://github.com/internxt/drive-desktop/releases/download/v#{version}/internxt-drive-#{version}.dmg"
  appcast "https://github.com/internxt/drive-desktop/releases.atom"
  name "Internxt Drive"
  desc "End-to-end encrypted, free, open source cloud storage"
  homepage "https://internxt.com/drive"

  app "Internxt Drive.app"
end
