cask "font-iosevka-ss15" do
  version "34.6.2"
  sha256 "edeb554f50f769955217a7c1fd617bb5c4d40f53682ad947718b27689e9be7bf"

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
