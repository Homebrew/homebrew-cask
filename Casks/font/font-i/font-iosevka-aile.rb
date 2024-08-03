cask "font-iosevka-aile" do
  version "31.1.0"
  sha256 "df236325448d064e4c33e46f415a582c8c7ffdffd2bd26f6344e7bb40ad2a575"

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
