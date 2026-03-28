cask "font-iosevka-ss16" do
  version "34.3.0"
  sha256 "7cff9e9a3160dcbdb0e58b85463c679dab163cad20cbc16f6d5f7f20f89a399f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
