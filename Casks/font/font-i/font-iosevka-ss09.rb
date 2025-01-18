cask "font-iosevka-ss09" do
  version "32.4.0"
  sha256 "b5e25ee6e1f931445fa3e73ffc37855b5c775c7705b502ac66491f29ae49a271"

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
