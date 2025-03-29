cask "font-iosevka-ss09" do
  version "33.2.0"
  sha256 "ee109c83fd709cd97aa169b6e150f8e8c669a3ce70068ec8111a5b3bf2a5f563"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
