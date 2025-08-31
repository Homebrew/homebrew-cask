cask "font-iosevka-slab" do
  version "33.2.9"
  sha256 "1e115fe7f8370be7218baa44e82edacf5a35ef20c27f940abc163b513db52be5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSlab-#{version}.zip"
  name "Iosevka Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSlab.ttc"

  # No zap stanza required
end
