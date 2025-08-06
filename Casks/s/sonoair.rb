cask "sonoair" do
  version "1.0-beta-7.0"
  sha256 "6badaa05917b97f4acc8eb09996f5a7748c04b006376511cdecc72ddb7c28760"

  url "https://sonoair.mihosoft.eu/releases/#{version}/SonoAir.zip"
  name "SonoAir"
  homepage "https://sonoair.mihosoft.eu/"

  deprecate! date: "2024-09-08", because: :unmaintained

  app "SonoAir.app"

  caveats do
    requires_rosetta
  end
end
