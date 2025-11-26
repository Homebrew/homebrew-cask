cask "font-iosevka-ss15" do
  version "33.3.5"
  sha256 "712afa8986e5c275c374bcf3758c5d681c6357b4f260470583a88709dc85654d"

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
