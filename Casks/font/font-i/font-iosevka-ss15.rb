cask "font-iosevka-ss15" do
  version "32.2.0"
  sha256 "9f483b0b484cd7fe3caef2a7b1a9cec8f8e4551fccfa9ffa9db6ad8943344ebe"

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
