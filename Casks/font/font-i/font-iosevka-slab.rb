cask "font-iosevka-slab" do
  version "33.0.0"
  sha256 "32baccea895b9d70db7810ad30cc72c11d5e06fe417a446cb659bf3c3f7f312b"

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
