cask "font-iosevka-ss15" do
  version "33.2.9"
  sha256 "1dc5b8e759a2f748ec0e4cb341d63c79ac828565bc21ba39e145fcd17bffd68f"

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
