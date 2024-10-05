cask "font-iosevka-ss15" do
  version "31.8.0"
  sha256 "edb5c492f48ba4b677ba13ce6fd6e37b0b22232ad7bfdf3a67ca93765433ea31"

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
