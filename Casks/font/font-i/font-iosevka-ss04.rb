cask "font-iosevka-ss04" do
  version "32.2.1"
  sha256 "3eac838d04b723f70e78f93f460be4d3afd4f4e487ed3fafd19f82cec1c113a5"

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
