cask "font-iosevka-ss15" do
  version "34.9.0"
  sha256 "6b2771f152a2230b6574c12c069ad7f89a6c6f3b790c6a6da24ef6b7ca326d73"

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
