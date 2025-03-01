cask "font-iosevka-ss07" do
  version "33.0.0"
  sha256 "7f8558702927ee8cddd9448a7d0822f85191c41a35033757b277fe2177716131"

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
