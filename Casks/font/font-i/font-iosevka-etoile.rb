cask "font-iosevka-etoile" do
  version "33.2.7"
  sha256 "cd83a4017ab0e71634f2675a9d159b33c1556a5f9db543dfbc6e5da795f7c13c"

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
