cask "one-switch" do
  version "1.16,278"
  sha256 "a960e80cce590f571bcfc8ccf22d04b5680e6b137605f6df7f731fbad6c423d0"

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
  appcast "https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml"
  name "One Switch"
  desc "All system and utility switches in one place"
  homepage "https://fireball.studio/oneswitch"

  depends_on macos: ">= :mojave"

  app "One Switch.app"
end
