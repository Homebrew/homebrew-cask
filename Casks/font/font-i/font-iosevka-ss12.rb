cask "font-iosevka-ss12" do
  version "31.6.0"
  sha256 "e088a4fa1fa9d2135367fceb5e1d631bd28ee20035c009625bd108b615877fd7"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
