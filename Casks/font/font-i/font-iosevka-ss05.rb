cask "font-iosevka-ss05" do
  version "34.6.2"
  sha256 "02794495241bf3b258ce2dff36fc7090114089bffa9139bff55183fceef8ae89"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
