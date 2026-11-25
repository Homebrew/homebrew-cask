cask "font-iosevka" do
  version "34.9.1"
  sha256 "3db66158ad06ffab603f7d89b40cdaf1dbfad374a902f8717aa9f5317cc2f9db"

  url "https://github.com/be5invis/Iosevka/releases/download/v#{version}/SuperTTC-Iosevka-#{version}.zip"
  name "Iosevka"
  homepage "https://github.com/be5invis/Iosevka/"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "Iosevka.ttc"

  zap :not_required
end
