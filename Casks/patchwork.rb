cask "patchwork" do
  version "3.18.1"
  sha256 "2436dc487afb45264e81c5b1d65cb4acc7ec8d772ce2af2132122f86ca6d887c"

  url "https://github.com/ssbc/patchwork/releases/download/v#{version}/Patchwork-#{version}.dmg"
  name "Patchwork"
  homepage "https://github.com/ssbc/patchwork"

  app "Patchwork.app"
end
