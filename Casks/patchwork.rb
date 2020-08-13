cask "patchwork" do
  version "3.18.0"
  sha256 "9f98b5a0574ae854f2ef970db70e9f542013340f38dab4ab9b2bda7abb6d9278"

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  appcast "https://github.com/ssbc/patchwork/releases.atom"
  name "Patchwork"
  homepage "https://github.com/ssbc/patchwork"

  app "Patchwork.app"
end
