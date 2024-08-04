cask "font-iosevka-ss09" do
  version "31.1.0"
  sha256 "095774822ca1e7b242ffd264ee3486e8b37d07acdc88e3b85fc1f3669819f13a"

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
