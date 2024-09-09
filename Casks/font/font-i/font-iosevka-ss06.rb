cask "font-iosevka-ss06" do
  version "31.6.1"
  sha256 "3adbcc808483db0529ec9eb880adf0ac49172b4c0d10cf381320a8b2afcd590a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06.ttc"

  # No zap stanza required
end
