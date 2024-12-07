cask "font-iosevka-ss15" do
  version "32.2.1"
  sha256 "2f5e8a44fc48821d7011f0ba79a85e834a79adf8353387bfc5c6ba6c13d62165"

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
