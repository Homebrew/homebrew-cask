cask "font-iosevka-etoile" do
  version "31.1.0"
  sha256 "f823426e323d922602e57e03449178d91786d3eca4b475d3864e288c2af1b62e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaEtoile-#{version}.zip"
  name "Iosevka Etoile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaEtoile-Bold.ttc"
  font "IosevkaEtoile-ExtraBold.ttc"
  font "IosevkaEtoile-ExtraLight.ttc"
  font "IosevkaEtoile-Heavy.ttc"
  font "IosevkaEtoile-Light.ttc"
  font "IosevkaEtoile-Medium.ttc"
  font "IosevkaEtoile-Regular.ttc"
  font "IosevkaEtoile-SemiBold.ttc"
  font "IosevkaEtoile-Thin.ttc"

  # No zap stanza required
end
