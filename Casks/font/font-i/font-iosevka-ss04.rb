cask "font-iosevka-ss04" do
  version "34.6.3"
  sha256 "b24021712cf9f6531899178b2a08c267958291dc0742f6e3f2c44648b30df21b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04.ttc"

  # No zap stanza required
end
