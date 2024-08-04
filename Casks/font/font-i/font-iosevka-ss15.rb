cask "font-iosevka-ss15" do
  version "31.1.0"
  sha256 "61aad208bd12c055a6ef9ce5f4da39130a3bc9ff34a0347af7eeb2e9770ce6ef"

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
