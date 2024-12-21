cask "font-iosevka-slab" do
  version "32.3.0"
  sha256 "265cac230f2adeb2ed579c664d8ba82b2968e88c2b07fd0000f0e374da567894"

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
