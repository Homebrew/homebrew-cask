cask "font-iosevka-ss07" do
  version "34.5.0"
  sha256 "d21d9a269f82e8ab63f117ecfa910a532446c26c73298801b574740fb33630ea"

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
