cask "font-iosevka-ss07" do
  version "34.1.0"
  sha256 "bbacc3d9fa70e0e63e48c77a0f44c88bf391a54f404593cfc3ee774d818e69f9"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
