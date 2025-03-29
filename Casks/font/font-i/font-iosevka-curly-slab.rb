cask "font-iosevka-curly-slab" do
  version "33.2.0"
  sha256 "65582ab2eaa2c73e287cdbf7078b2edb95814ec3969bbb17dfcb950f32aacf31"

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
