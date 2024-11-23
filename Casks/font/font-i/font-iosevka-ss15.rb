cask "font-iosevka-ss15" do
  version "32.1.0"
  sha256 "a85099f636bad42eda6937564925de4abaaa002588b639a3446df7c111b0ded7"

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
