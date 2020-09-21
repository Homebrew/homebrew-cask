cask "multi" do
  version "2.0.7"
  sha256 "a41f9ac0bb97d80755147402f8971e6e54298387928625412b8b8257240a8980"

  url "https://github.com/hkgumbs/multi/releases/download/v#{version}/Multi.#{version}.dmg"
  appcast "https://github.com/hkgumbs/multi/releases.atom"
  name "Multi"
  desc "Create apps from groups of websites"
  homepage "https://github.com/hkgumbs/multi"

  app "Multi.app"
end
