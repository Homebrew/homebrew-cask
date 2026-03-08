cask "font-iosevka-ss15" do
  version "34.2.1"
  sha256 "eb4d8f01656b160f33bbb25398cff64c3bcbf622cd6bac08a9801795026cb48f"

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
