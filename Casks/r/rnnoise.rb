cask "rnnoise" do
  version "1.10"
  sha256 "53c41fe3ce8af529b1d2d18802ecbd7e9f0b6d7ad013fd5f92f6af974472a9e9"

  url "https://github.com/werman/noise-suppression-for-voice/releases/download/v#{version}/macos-rnnoise.zip"
  name "Noise Suppression for Voice"
  desc "Real-time Noise Suppression Plugin"
  homepage "https://github.com/werman/noise-suppression-for-voice"

  audio_unit_plugin "macos-rnnoise/rnnoise.component"
  vst_plugin "macos-rnnoise/vst/rnnoise_mono.vst"
  vst_plugin "macos-rnnoise/vst/rnnoise_stereo.vst"
  vst3_plugin "macos-rnnoise/rnnoise.vst3"

  zap rmdir: [
    "~/Library/Audio/Plug-Ins/VST",
    "~/Library/Audio/Plug-Ins/VST3",
  ]
end
