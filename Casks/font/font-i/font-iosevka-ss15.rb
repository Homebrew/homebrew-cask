cask "font-iosevka-ss15" do
  version "31.2.0"
  sha256 "e26109924de84ba653a0fee5eb3789459288e93068f016c9de2189f6481f8a43"

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
