cask "font-iosevka-ss18" do
  version "34.0.0"
  sha256 "85f31752d692f26f8a55a890579c892a03870e15016db659a916b97c3e515333"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18.ttc"

  # No zap stanza required
end
