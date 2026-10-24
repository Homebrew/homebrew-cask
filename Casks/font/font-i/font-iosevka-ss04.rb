cask "font-iosevka-ss04" do
  version "34.9.1"
  sha256 "5514786520582ef2545e12fd3a6886d3e8a849441a00f3cbe082ebfa95ea02ce"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
