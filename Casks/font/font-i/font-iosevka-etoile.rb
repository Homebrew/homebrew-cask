cask "font-iosevka-etoile" do
  version "32.2.1"
  sha256 "ea6c4c0d7873ec02d16591efddf622f6a00b51cc5e1c175b47df2276b383dd0f"

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
