cask "font-iosevka-ss04" do
  version "30.3.3"
  sha256 "9ecaeb1cd7123657d2b84b6df1f59e232853763a368f84aa09355c18e069428a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS04-#{version}.zip"
  name "Iosevka SS04"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS04-Bold.ttc"
  font "IosevkaSS04-ExtraBold.ttc"
  font "IosevkaSS04-ExtraLight.ttc"
  font "IosevkaSS04-Heavy.ttc"
  font "IosevkaSS04-Light.ttc"
  font "IosevkaSS04-Medium.ttc"
  font "IosevkaSS04-Regular.ttc"
  font "IosevkaSS04-SemiBold.ttc"
  font "IosevkaSS04-Thin.ttc"

  # No zap stanza required
end
