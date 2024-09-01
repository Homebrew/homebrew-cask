cask "font-iosevka-ss09" do
  version "31.5.0"
  sha256 "1232634d7793fd33dd0fa7aca67e39731618a6a788d72127e2108641d4b2ad18"

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
