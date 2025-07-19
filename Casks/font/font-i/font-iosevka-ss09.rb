cask "font-iosevka-ss09" do
  version "33.2.7"
  sha256 "a3a679e352046dce8c73a4ed872c8e4f93461f70416a12c674065ced7925baf3"

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
