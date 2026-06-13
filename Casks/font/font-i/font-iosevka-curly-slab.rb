cask "font-iosevka-curly-slab" do
  version "34.6.2"
  sha256 "8180d9028a385a1b20f961edb5e72499f0819e243226269ca9a9b67624b2ef2a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaCurlySlab-#{version}.zip"
  name "Iosevka Curly Slab"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurlySlab.ttc"

  # No zap stanza required
end
