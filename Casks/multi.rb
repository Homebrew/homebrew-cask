cask "multi" do
  version "2.1.1"
  sha256 "7219ce73c0395b5aee36918674e610186edccbf6bdd0115e324f6d3e069b27e1"

  url "https://github.com/hkgumbs/multi/releases/download/v#{version}/Multi.#{version}.dmg"
  appcast "https://github.com/hkgumbs/multi/releases.atom"
  name "Multi"
  desc "Create apps from groups of websites"
  homepage "https://github.com/hkgumbs/multi"

  app "Multi.app"
end
