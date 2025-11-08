cask "font-iosevka-ss14" do
  version "33.3.4"
  sha256 "a21566b8dc8329758c2d2073658b295d3193d5a236d55d56cdf3db7859c7f7ed"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS14-#{version}.zip"
  name "Iosevka SS14"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS14.ttc"

  # No zap stanza required
end
