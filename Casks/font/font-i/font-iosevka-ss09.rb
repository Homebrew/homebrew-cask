cask "font-iosevka-ss09" do
  version "33.3.0"
  sha256 "f0b1d69db1ac0e6769a40ada46171d2ac7b81ab80f271f26b38174376fcab059"

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
