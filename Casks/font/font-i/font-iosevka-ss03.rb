cask "font-iosevka-ss03" do
  version "34.8.0"
  sha256 "c484b269e04b49efd6863feeeb3a0ba5809864789eb0d5a79efb363161dcce6b"

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
