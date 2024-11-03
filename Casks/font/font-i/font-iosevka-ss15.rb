cask "font-iosevka-ss15" do
  version "32.0.1"
  sha256 "d357cdd67b0752bb71f62904b837b521ce24bd7c994c8c2df19b1af03868a295"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS15-#{version}.zip"
  name "Iosevka SS15"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS15.ttc"

  # No zap stanza required
end
