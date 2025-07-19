cask "font-iosevka" do
  version "33.2.7"
  sha256 "1ec79743bb88d3dbe204df44c288402285a9f91c760a98058fcf146afa08206c"

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
