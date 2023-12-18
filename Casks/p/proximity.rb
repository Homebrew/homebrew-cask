cask "proximity" do
  version "1.0.1"
  sha256 "836d209bb83cd144780e200aad7ea6dda2581b20c5be316208337996532f0d51"

  url "https://static.kvraudio.com/files/1451/proximity_v#{version.dots_to_underscores}-mac.zip",
      verified: "kvraudio.com/"
  name "Proximity"
  homepage "https://www.tokyodawn.net/proximity/"

  deprecate! date: "2023-12-17", because: :discontinued

  container nested: "macOS/Proximity-VST-AU.dmg"

  audio_unit_plugin "Proximity.component"
  vst_plugin "Proximity.vst"
end
