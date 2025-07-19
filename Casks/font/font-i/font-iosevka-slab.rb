cask "font-iosevka-slab" do
  version "33.2.7"
  sha256 "b26f1aad5b47600dbc622324c274c586f2d286186f5c54c1c7c34426dbb9a805"

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
