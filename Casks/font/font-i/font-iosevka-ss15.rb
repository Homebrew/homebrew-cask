cask "font-iosevka-ss15" do
  version "31.7.0"
  sha256 "3775335321ed06a4cdf1600ff3bce59d34b9692888a65424005f41c6b2957151"

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
