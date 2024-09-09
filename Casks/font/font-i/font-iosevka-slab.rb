cask "font-iosevka-slab" do
  version "31.6.1"
  sha256 "36ff34e8fd2240f3bac047c84794d0076eb4d00afe4dd5664536662fdcbca8ea"

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
