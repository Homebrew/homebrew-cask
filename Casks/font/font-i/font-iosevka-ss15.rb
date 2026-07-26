cask "font-iosevka-ss15" do
  version "34.8.0"
  sha256 "e6e9fa6ce10ab8b3d042315c55830bbce6903026c45cd8180c3f4543e0ebe697"

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
