cask "one-switch" do
  version "1.15,266"
  sha256 "d851e46041bf4b31bccd36ae828714f664fd263552292e51ad07922313f16cbf"

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
  appcast "https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml"
  name "One Switch"
  desc "All system and utility switches in one place"
  homepage "https://fireball.studio/oneswitch"

  depends_on macos: ">= :mojave"

  app "One Switch.app"
end
