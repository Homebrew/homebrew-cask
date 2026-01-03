cask "font-iosevka-curly-slab" do
  version "34.0.0"
  sha256 "a578a55637589a70e57b00843e435b3478e3846e05c52dab3093f23b0d9d8ae7"

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
