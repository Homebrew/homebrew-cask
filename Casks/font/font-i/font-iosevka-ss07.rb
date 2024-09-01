cask "font-iosevka-ss07" do
  version "31.5.0"
  sha256 "14113f836b9cb1502ffb79e521ebb64bf874beac4818f7dcb01d1a3ab4a23d76"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS07-#{version}.zip"
  name "Iosevka SS07"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS07.ttc"

  # No zap stanza required
end
