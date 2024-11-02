cask "font-iosevka-ss15" do
  version "32.0.0"
  sha256 "2fbb85a199246e0c224a43007dde5537fef9334cdd66e9e43a4022687bcb6855"

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
