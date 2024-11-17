cask "font-iosevka" do
  version "32.1.0"
  sha256 "ac6325cb6dc455548a58babcdf8dcbd8b5333f3c97edd2d803341a563fa26cfb"

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
