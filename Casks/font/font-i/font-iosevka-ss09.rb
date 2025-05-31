cask "font-iosevka-ss09" do
  version "33.2.4"
  sha256 "f46dd3f219ca7e63ce62b7d9f4ba711cb2ce3836b696439ef3fc53291de87b95"

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
