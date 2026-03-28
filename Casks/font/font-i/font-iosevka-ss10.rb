cask "font-iosevka-ss10" do
  version "34.3.0"
  sha256 "646b6ed18d08780af9866da46629d6d71d6572f4755775eb59f731924a33cefc"

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
