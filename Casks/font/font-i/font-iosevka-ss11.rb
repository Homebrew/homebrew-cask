cask "font-iosevka-ss11" do
  version "31.9.1"
  sha256 "610a5652c7ca172551e9b56ea4652eeffcd0ae328d9666919745e20ebf94ab2e"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS11-#{version}.zip"
  name "Iosevka SS11"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS11.ttc"

  # No zap stanza required
end
