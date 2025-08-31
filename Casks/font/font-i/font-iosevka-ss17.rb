cask "font-iosevka-ss17" do
  version "33.2.9"
  sha256 "8bb9f6e4be75bec3a613e04701ebb3da26125fdfc5f067ee1ddbe004c472f1e6"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS17-#{version}.zip"
  name "Iosevka SS17"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS17.ttc"

  # No zap stanza required
end
