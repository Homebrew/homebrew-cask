cask "font-iosevka-ss15" do
  version "31.5.0"
  sha256 "f91da02347a2a7850b801cb980637159f2dd56ddf867f2c2368cdb2101ebb4c0"

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
