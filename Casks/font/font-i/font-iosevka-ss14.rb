cask "font-iosevka-ss14" do
  version "31.9.1"
  sha256 "40a0f92fa401dd2e8d40833e414179c8f96e38745121119d620aee93015cab14"

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
