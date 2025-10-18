cask "font-iosevka-ss07" do
  version "33.3.2"
  sha256 "2915de2f30ce009775ccf3d2f943ff43ebd40c84a77ad01cc4615cec38a06227"

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
