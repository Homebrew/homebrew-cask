# typed: false
# frozen_string_literal: true

cask "noise-suppression-for-voice" do
  version "1.03"
  sha256 "544d1daef1c32e2e5bbb2f43eda1c5f2619f2a9e755721ee26366b5eda9e2668"

  url "https://github.com/werman/noise-suppression-for-voice/releases/download/v#{version}/macos-rnnoise.zip"
  name "Noise Suppression for Voice"
  desc "Real-time Noise Suppression Plugin"
  homepage "https://github.com/werman/noise-suppression-for-voice"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/noise-suppression-for-voice/releases/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end

  audio_unit_plugin "macos-rnnoise/rnnoise.component"
  vst_plugin "macos-rnnoise/vst/rnnoise_mono.vst"
  vst_plugin "macos-rnnoise/vst/rnnoise_stereo.vst"
  vst3_plugin "macos-rnnoise/rnnoise.vst3"
end
