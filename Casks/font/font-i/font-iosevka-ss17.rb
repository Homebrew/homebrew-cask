cask "font-iosevka-ss17" do
  version "34.6.0"
  sha256 "c46ac5ef4c9b45d6e53385c873f25ea92794c7ace2a62a3de007bc2b624a3884"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
