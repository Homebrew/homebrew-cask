cask "font-iosevka-ss02" do
  version "30.1.1"
  sha256 "bee62d7aed91e4fb86b80be688b3e6507754a856c31061ecd1bb0446145b3796"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS02-#{version}.zip"
  name "Iosevka SS02"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS02-Bold.ttc"
  font "IosevkaSS02-ExtraBold.ttc"
  font "IosevkaSS02-ExtraLight.ttc"
  font "IosevkaSS02-Heavy.ttc"
  font "IosevkaSS02-Light.ttc"
  font "IosevkaSS02-Medium.ttc"
  font "IosevkaSS02-Regular.ttc"
  font "IosevkaSS02-SemiBold.ttc"
  font "IosevkaSS02-Thin.ttc"

  # No zap stanza required
end
