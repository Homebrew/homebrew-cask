cask "font-iosevka" do
  version "33.3.4"
  sha256 "0944361d0ed540a0a68866120339c41c702bb6c9811d28a9920fb0a375e9a5f4"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  # No zap stanza required
end
