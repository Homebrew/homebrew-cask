cask "font-iosevka-ss09" do
  version "33.3.4"
  sha256 "178efded33d92eb035a92a711e0a3378574bfe0acc558662f9e2b481a7169842"

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
