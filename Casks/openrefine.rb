cask "openrefine" do
  version "3.4"
  sha256 "5310c439aae6402be713f3457ef6c369252fd45386aae633e7169c5f819cc961"

  # github.com/OpenRefine/OpenRefine/ was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  appcast "https://github.com/OpenRefine/OpenRefine/releases.atom"
  name "OpenRefine"
  homepage "https://openrefine.org/"

  app "OpenRefine.app"
end
