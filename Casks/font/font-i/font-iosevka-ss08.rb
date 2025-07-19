cask "font-iosevka-ss08" do
  version "33.2.7"
  sha256 "33f322f5966b9ba21829657a1be704998d702d4afaf0146b0faa283b15c5c0cd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
