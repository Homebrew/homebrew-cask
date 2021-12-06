cask "curio" do
  version "19,19006"
  sha256 "e2ee57fbc298573e83da89f25b7c3f11aa71ddd6c1d76ad4d81d3b5782623141"

  url "https://www.zengobi.com/downloads/Curio#{version.after_comma.no_dots}.zip"
  name "Curio"
  desc "Note-taking and organizing app"
  homepage "https://zengobi.com/curio/"

  depends_on macos: ">= :mojave"

  app "Curio.app"
end
