cask "one-switch" do
  version "1.14.2,259"
  sha256 "571cd5facd8a9d93715926b28c8a4498db03eed5c08d8f30a336b461aba93a99"

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
  appcast "https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml"
  name "One Switch"
  desc "All system and utility switches in one place"
  homepage "https://fireball.studio/oneswitch"

  depends_on macos: ">= :mojave"

  app "One Switch.app"
end
