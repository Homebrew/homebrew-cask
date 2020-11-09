cask "openrefine" do
  version "3.4.1"
  sha256 "407078613f7cb6fad2f0731d15ed43a7dedd4311b58876198ebc52576bb89b98"

  # github.com/OpenRefine/OpenRefine/ was verified as official when first introduced to the cask
  url "https://github.com/OpenRefine/OpenRefine/releases/download/#{version}/openrefine-mac-#{version}.dmg"
  appcast "https://github.com/OpenRefine/OpenRefine/releases.atom"
  name "OpenRefine"
  homepage "https://openrefine.org/"

  app "OpenRefine.app"
end
