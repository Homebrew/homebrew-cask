cask "font-iosevka-ss15" do
  version "33.3.4"
  sha256 "376049510484ef54ca27e40c896a4a114bf6ff92a655d92a923e36255f99949c"

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
