cask "font-iosevka-ss17" do
  version "31.2.0"
  sha256 "0c5ea215069816eb3e4f095ddd31920c57aac881ae18a7cc625a5641fcc294db"

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
