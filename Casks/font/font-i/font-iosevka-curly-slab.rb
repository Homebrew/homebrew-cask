cask "font-iosevka-curly-slab" do
  version "33.2.5"
  sha256 "b2d7de76a1023dde8673e1dca9bac787a4f613c5d53139f26fc1b3fe7558ea24"

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
