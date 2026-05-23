cask "font-iosevka-ss12" do
  version "34.6.0"
  sha256 "4112527e1141d9e257c661796cb730a2c312d75c120dcd6d593089a771e81ccc"

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
