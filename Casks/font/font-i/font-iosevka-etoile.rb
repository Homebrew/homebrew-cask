cask "font-iosevka-etoile" do
  version "33.2.9"
  sha256 "52cf1342c2c92ef81989f7136a92e1dad7e293b22bdc62a67b6c93d5ef59e529"

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
