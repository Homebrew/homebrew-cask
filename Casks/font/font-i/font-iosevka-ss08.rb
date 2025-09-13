cask "font-iosevka-ss08" do
  version "33.3.0"
  sha256 "f31f0cf030b826a686242d30f96badc7b6ff6206087320fe9e4d2529a484c33a"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS08-#{version}.zip"
  name "Iosevka SS08"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS08.ttc"

  # No zap stanza required
end
