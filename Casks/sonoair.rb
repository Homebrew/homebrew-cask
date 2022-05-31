cask "sonoair" do
  version "1.0-beta-7.0"
  sha256 "6badaa05917b97f4acc8eb09996f5a7748c04b006376511cdecc72ddb7c28760"

  url "https://sonoair.mihosoft.eu/releases/#{version}/SonoAir.zip"
  name "SonoAir"
  homepage "https://sonoair.mihosoft.eu/"

  livecheck do
    url "https://sonoair.mihosoft.eu/download.html"
    regex(%r{href=.*?/([^/]+)/SonoAir\.zip}i)
  end

  app "SonoAir.app"
end
