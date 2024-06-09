cask "laconvolver" do
  version "0.4"
  sha256 "20c79ebe117936d1abb1bc700018b4253072e3e8567041805ea71cbdecf51242"

  url "https://audio.lernvall.com/LAConvolver#{version}.zip"
  name "LAConvolver"
  desc "AU plug-in for convolving the audio stream with an impulse response audio file"
  homepage "https://audio.lernvall.com/"

  livecheck do
    url :homepage
    regex(/href="LAConvolverv?(\d+(?:\.\d+)*)\.zip"/i)
  end

  audio_unit_plugin "LAConvolver/LAConvolver.component"

  # No zap stanza required
end
