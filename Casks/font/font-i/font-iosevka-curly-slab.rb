cask "font-iosevka-curly-slab" do
  version "30.1.0"
  sha256 "0b405dc5470d228ff41894ba9f3b765d9a5d1ca57277d6bb82a14b4e927c696e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaCurlySlab-#{version}.zip"
  name "Iosevka Curly Slab"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaCurlySlab-Bold.ttc"
  font "IosevkaCurlySlab-ExtraBold.ttc"
  font "IosevkaCurlySlab-ExtraLight.ttc"
  font "IosevkaCurlySlab-Heavy.ttc"
  font "IosevkaCurlySlab-Light.ttc"
  font "IosevkaCurlySlab-Medium.ttc"
  font "IosevkaCurlySlab-Regular.ttc"
  font "IosevkaCurlySlab-SemiBold.ttc"
  font "IosevkaCurlySlab-Thin.ttc"

  # No zap stanza required
end
