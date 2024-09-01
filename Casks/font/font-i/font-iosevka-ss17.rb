cask "font-iosevka-ss17" do
  version "31.5.0"
  sha256 "98be14d10bde69c836fcddd8360aaef8219faa933223d9f83737f5aa7a6d175d"

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
