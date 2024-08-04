cask "font-iosevka-ss12" do
  version "31.1.0"
  sha256 "64ee702776475dd38202df8c224699747a491c94482c3e03cf22914b42b4a5bc"

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
