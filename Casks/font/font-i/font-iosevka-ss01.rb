cask "font-iosevka-ss01" do
  version "32.4.0"
  sha256 "3ee55d94dd415eada0330b29781cc492c137a5f0efc03d5f0c0fe1c6d2a719a0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS01-#{version}.zip"
  name "Iosevka SS01"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS01.ttc"

  # No zap stanza required
end
