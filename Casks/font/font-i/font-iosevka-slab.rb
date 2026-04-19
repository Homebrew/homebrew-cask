cask "font-iosevka-slab" do
  version "34.4.0"
  sha256 "48e6b36349034aef6eb1a365b7c47cd69cc0963baa4acffc34c97d3cd0c45b57"

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
