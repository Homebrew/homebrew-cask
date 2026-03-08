cask "font-iosevka-ss03" do
  version "34.2.1"
  sha256 "6ffb9ddf95490a1e2736cacb350c5ef731e78e6f0b4308ec50729aa34a112851"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS03-#{version}.zip"
  name "Iosevka SS03"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS03.ttc"

  # No zap stanza required
end
