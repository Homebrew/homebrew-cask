cask "font-iosevka-curly-slab" do
  version "34.4.0"
  sha256 "c3ce3b0eeae1a6a0ee8929a764d29b87830a8bab201dd2e47e9a68392bc8e3bb"

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
