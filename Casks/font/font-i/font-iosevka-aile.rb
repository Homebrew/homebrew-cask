cask "font-iosevka-aile" do
  version "34.9.1"
  sha256 "23e285dd0962ea27b7d71185fe7700463c861aa9ef11353bc3d200ab8764d5dd"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-IosevkaAile-#{version}.zip"
  name "Iosevka Aile"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "IosevkaAile.ttc"

  zap :not_required
end
