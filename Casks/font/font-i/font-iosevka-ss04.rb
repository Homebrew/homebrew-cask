cask "font-iosevka-ss04" do
  version "33.3.5"
  sha256 "b5f99d94919276a0e5290d6e23b1435ea23e2cb08222aa519266524702eb5e77"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
