cask "font-iosevka-ss15" do
  version "34.6.0"
  sha256 "0588a42fe304406d7310e0ac2ffabc5743f319a7df03ab1d188119fdaa513fbe"

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
