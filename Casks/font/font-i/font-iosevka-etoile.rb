cask "font-iosevka-etoile" do
  version "30.0.1"
  sha256 "8948cc248f60f517d3e6a48026492a34dba8621513e52717654485374f197862"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaEtoile-#{version}.zip"
  name "Iosevka Etoile"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
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
