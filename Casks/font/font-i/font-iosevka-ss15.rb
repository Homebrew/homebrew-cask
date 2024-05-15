cask "font-iosevka-ss15" do
  version "30.0.1"
  sha256 "a4e0d7207a4c1f316063bd1691b2a1e100ab4e1100518edcaf46c6eff50a9a4f"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS15-#{version}.zip"
  name "Iosevka SS15"
  desc "Sans-serif, slab-serif, monospace and quasi‑proportional typeface family"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS15-Bold.ttc"
  font "IosevkaSS15-ExtraBold.ttc"
  font "IosevkaSS15-ExtraLight.ttc"
  font "IosevkaSS15-Heavy.ttc"
  font "IosevkaSS15-Light.ttc"
  font "IosevkaSS15-Medium.ttc"
  font "IosevkaSS15-Regular.ttc"
  font "IosevkaSS15-SemiBold.ttc"
  font "IosevkaSS15-Thin.ttc"

  # No zap stanza required
end
