cask "font-iosevka-ss16" do
  version "34.5.0"
  sha256 "80ad57b1d2f9b553c2b9e13e76f4fc2033151474675f6cdac10810691bb02e1b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS16-#{version}.zip"
  name "Iosevka SS16"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS16.ttc"

  # No zap stanza required
end
