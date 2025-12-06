cask "font-iosevka-ss05" do
  version "33.3.6"
  sha256 "60ebaeb43ac0c1459cef6be88a251252742077ee5db22757b4287a5c62027a18"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaSS05-#{version}.zip"
  name "Iosevka SS05"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaSS05.ttc"

  # No zap stanza required
end
