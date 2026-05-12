cask "font-iosevka-ss11" do
  version "34.5.0"
  sha256 "f46a0b2a0f8c040dde065844514924d05300fbe7e747b2f5e05d91ad7fecab1b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
