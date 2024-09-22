cask "font-iosevka-ss15" do
  version "31.7.1"
  sha256 "a32ef10c8a91385604a8529e16af029d32bbb53020dc8fd3f4122542a1a9c51f"

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
