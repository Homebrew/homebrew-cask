cask "font-iosevka-ss15" do
  version "33.2.7"
  sha256 "acebd04263c18b26f37c053e2a457f5e53086ea335d70789b707fa6bb15a73a9"

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
