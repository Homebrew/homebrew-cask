cask "font-iosevka-ss11" do
  version "31.8.0"
  sha256 "693991880134ec629b401bbbb69f8e65c0024e8c6d3f1f454a95f6821cdadd26"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
