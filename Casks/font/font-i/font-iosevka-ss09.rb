cask "font-iosevka-ss09" do
  version "31.2.0"
  sha256 "97732af8e05d4fb3ba775c9b42db18f391abb8eb62b2cdf9e30b2cdbe74f1d12"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS09-#{version}.zip"
  name "Iosevka SS09"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS09.ttc"

  # No zap stanza required
end
