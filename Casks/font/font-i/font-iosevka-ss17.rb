cask "font-iosevka-ss17" do
  version "34.5.0"
  sha256 "d417cc16882657f8242fb1f8aa2b86ac03d8f11a6abf6b8f67e5939574371ae6"

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
