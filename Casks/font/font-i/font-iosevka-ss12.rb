cask "font-iosevka-ss12" do
  version "32.2.1"
  sha256 "f7edad901ee46eb2ae6296b809e81aa2ea02ea56f5990b1e1625f62b1a7f89fa"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS12-#{version}.zip"
  name "Iosevka SS12"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS12.ttc"

  # No zap stanza required
end
