cask "font-iosevka-etoile" do
  version "34.6.2"
  sha256 "539a522543932b2df150e007010bfd973dc951e2b83bfa7a8f6d3f3d216ebd59"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaEtoile-#{version}.zip"
  name "Iosevka Etoile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaEtoile.ttc"

  # No zap stanza required
end
