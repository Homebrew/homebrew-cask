cask "font-iosevka-ss13" do
  version "34.6.2"
  sha256 "bc10c7320df6c360a033fd0dd4b85f8efcff9f93f9ea70be0c97f79189dc2c34"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS13-#{version}.zip"
  name "Iosevka SS13"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS13.ttc"

  # No zap stanza required
end
