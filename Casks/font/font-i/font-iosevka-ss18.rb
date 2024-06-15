cask "font-iosevka-ss18" do
  version "30.2.0"
  sha256 "1882366e20cb96dd9eb02baba946efe8d18599d5156c2decafbbfa9a162dd06b"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS18-#{version}.zip"
  name "Iosevka SS18"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS18-Bold.ttc"
  font "IosevkaSS18-ExtraBold.ttc"
  font "IosevkaSS18-ExtraLight.ttc"
  font "IosevkaSS18-Heavy.ttc"
  font "IosevkaSS18-Light.ttc"
  font "IosevkaSS18-Medium.ttc"
  font "IosevkaSS18-Regular.ttc"
  font "IosevkaSS18-SemiBold.ttc"
  font "IosevkaSS18-Thin.ttc"

  # No zap stanza required
end
