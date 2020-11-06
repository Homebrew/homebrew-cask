cask "multi" do
  version "2.0.8"
  sha256 "c6082d02507aef1828299a5a0a56e0155199301e2d71d9cd2b93faaf89a17350"

  url "https://github.com/hkgumbs/multi/releases/download/v#{version}/Multi.#{version}.dmg"
  appcast "https://github.com/hkgumbs/multi/releases.atom"
  name "Multi"
  desc "Create apps from groups of websites"
  homepage "https://github.com/hkgumbs/multi"

  app "Multi.app"
end
