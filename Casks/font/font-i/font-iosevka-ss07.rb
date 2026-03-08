cask "font-iosevka-ss07" do
  version "34.2.1"
  sha256 "00e536e08d697d731c4cfa716a7649f47eb55821012f912cbd5293b22835c1a4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
