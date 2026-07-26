cask "font-iosevka-ss10" do
  version "34.8.0"
  sha256 "04f06395721d8606278fd80121ffa0ed1ea89cd5dd82abc6aa2ebde3e11f95ce"

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
