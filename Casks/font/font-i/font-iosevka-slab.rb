cask "font-iosevka-slab" do
  version "34.1.0"
  sha256 "6afb572265667567fcc3ede85171a595149ca4e60cc3b4bd98976ec4dbdbb826"

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
