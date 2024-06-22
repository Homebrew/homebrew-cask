cask "font-iosevka-ss15" do
  version "30.3.0"
  sha256 "b04edddbf92a38e42c91ff383bc0b45ae33d9a3bfc604e28990158ffc42e2167"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/PkgTTC-IosevkaSS15-#{version}.zip"
  name "Iosevka SS15"
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
