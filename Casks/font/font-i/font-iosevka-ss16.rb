cask "font-iosevka-ss16" do
  version "31.9.1"
  sha256 "71f6cfdab8af2b37e9e965cea03cf27cee3c363a47e82fa0340d7caa84f5f22c"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
