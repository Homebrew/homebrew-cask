cask "font-iosevka-ss15" do
  version "31.6.1"
  sha256 "a24c12dc4664c7fbc8c629f91e4d50ab337c46f0abffbd26832ce36c435657d9"

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
