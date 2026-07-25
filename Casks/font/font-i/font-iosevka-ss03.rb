cask "font-iosevka-ss03" do
  version "34.7.0"
  sha256 "6464d4abecf782ba3f8d0ae9d81956136cd85db27afbcbd08b5f80cb018834b8"

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
