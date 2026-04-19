cask "font-iosevka-ss13" do
  version "34.4.0"
  sha256 "f97e64e9385f4b694a9b3c690856c753b1b2ee1084cf5746c78ed364a0359ec0"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
