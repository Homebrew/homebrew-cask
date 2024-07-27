cask "font-iosevka-ss06" do
  version "31.0.0"
  sha256 "567270a6d94e62778dd3340d0e30d8507cfb2b3388ae6b8728adab5c097a021f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS06-#{version}.zip"
  name "Iosevka SS06"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS06-Bold.ttc"
  font "IosevkaSS06-ExtraBold.ttc"
  font "IosevkaSS06-ExtraLight.ttc"
  font "IosevkaSS06-Heavy.ttc"
  font "IosevkaSS06-Light.ttc"
  font "IosevkaSS06-Medium.ttc"
  font "IosevkaSS06-Regular.ttc"
  font "IosevkaSS06-SemiBold.ttc"
  font "IosevkaSS06-Thin.ttc"

  # No zap stanza required
end
