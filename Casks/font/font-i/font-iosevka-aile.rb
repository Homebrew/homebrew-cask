cask "font-iosevka-aile" do
  version "30.3.2"
  sha256 "9bdc938612239b476a1db15b77fa7a88a7eaeb8994bc08508eebe720142e80f2"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile-Bold.ttc"
  font "IosevkaAile-ExtraBold.ttc"
  font "IosevkaAile-ExtraLight.ttc"
  font "IosevkaAile-Heavy.ttc"
  font "IosevkaAile-Light.ttc"
  font "IosevkaAile-Medium.ttc"
  font "IosevkaAile-Regular.ttc"
  font "IosevkaAile-SemiBold.ttc"
  font "IosevkaAile-Thin.ttc"

  # No zap stanza required
end
