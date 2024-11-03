cask "font-iosevka-slab" do
  version "32.0.1"
  sha256 "60523ae1ae4a721fe42c7665d4e4c3e0e34d9fa5653d3b8af48da2d3daf8eddf"

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
