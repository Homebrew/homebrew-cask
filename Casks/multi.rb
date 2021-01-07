cask "multi" do
  version "2.1.0"
  sha256 "6b22e67312ba2f2c3c1c9095cc698cad45b1e51f8564aca3a61826a4779262d7"

  url "https://github.com/hkgumbs/multi/releases/download/v#{version}/Multi.#{version}.dmg"
  appcast "https://github.com/hkgumbs/multi/releases.atom"
  name "Multi"
  desc "Create apps from groups of websites"
  homepage "https://github.com/hkgumbs/multi"

  app "Multi.app"
end
