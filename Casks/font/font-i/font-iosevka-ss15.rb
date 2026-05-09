cask "font-iosevka-ss15" do
  version "34.5.0"
  sha256 "e233925c72af02bd5527b29c90f45befabd09ca22bde93e1fb7ab6492c564204"

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
