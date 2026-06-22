cask "font-iosevka-ss15" do
  version "34.6.3"
  sha256 "a71cca7b0446a2b0e8aba986080df6993577f8fd0ec2eda7431697e58872eb4c"

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
