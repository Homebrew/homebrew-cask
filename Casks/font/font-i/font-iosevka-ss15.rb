cask "font-iosevka-ss15" do
  version "33.1.0"
  sha256 "5e850489a256ecb26f9b285ce1ea2df8e3725cde0b11a9f0bee8a901c03e120f"

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
