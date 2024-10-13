cask "font-iosevka-ss09" do
  version "31.9.0"
  sha256 "655b80736c265443a4095bed937c74ba3826e8620158aff69f8c1d8f7df60d84"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
