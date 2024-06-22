cask "font-iosevka" do
  version "30.3.0"
  sha256 "6c3cc5fde236bc6da4729808faee6f20c44c07f91658966bdf8874ebe2416f83"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka-Bold.ttc"
  font "Iosevka-ExtraBold.ttc"
  font "Iosevka-ExtraLight.ttc"
  font "Iosevka-Heavy.ttc"
  font "Iosevka-Light.ttc"
  font "Iosevka-Medium.ttc"
  font "Iosevka-Regular.ttc"
  font "Iosevka-SemiBold.ttc"
  font "Iosevka-Thin.ttc"

  # No zap stanza required
end
