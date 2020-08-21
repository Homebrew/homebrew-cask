cask "one-switch" do
  version "1.14.1,254"
  sha256 "1c0c331bad3d846212a8a5f19979e7c4308edc8498d972f4c074d1f32eda3ee2"

  url "https://fireball.studio/api/release_manager/downloads/studio.fireball.OneSwitch/#{version.after_comma}.zip"
  appcast "https://fireball.studio/api/release_manager/studio.fireball.OneSwitch.xml"
  name "One Switch"
  homepage "https://fireball.studio/oneswitch"

  depends_on macos: ">= :mojave"

  app "One Switch.app"
end
