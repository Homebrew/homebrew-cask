cask "audioslim" do
  version "0.1.0"
  sha256 "f1fb119ede27d16462e36db3c7027ad07227d169c0f4905d798fc2ce54729f6b"

  url "https://github.com/gianpaj/audioslim/releases/download/#{version}/AudioSlim_#{version}_aarch64.dmg"
  name "AudioSlim"
  desc "Compress audio files using FFmpeg"
  homepage "https://github.com/gianpaj/audioslim"

  depends_on arch: :arm64

  app "AudioSlim.app"

  zap trash: [
    "~/Library/Application Support/AudioSlim",
    "~/Library/Preferences/com.audioslim.*",
  ]
end
