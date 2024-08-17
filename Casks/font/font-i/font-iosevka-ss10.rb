cask "font-iosevka-ss10" do
  version "31.3.0"
  sha256 "2ba9dae96493e84f24c16437fe625101168cdf4834a02caa8a1fca4f4a7a06d5"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS10-#{version}.zip"
  name "Iosevka SS10"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS10.ttc"

  # No zap stanza required
end
