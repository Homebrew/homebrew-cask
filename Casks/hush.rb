cask "hush" do
  version "1.0"
  sha256 "ed5050e0806d633a717807f90e28acf4b6c2ebcd789b68d3b1c4d461aba0dfc7"

  url "https://github.com/oblador/hush/releases/download/v#{version}/Hush.dmg",
      verified: "github.com/oblador/hush/"
  appcast "https://github.com/oblador/hush/releases.atom"
  name "Hush"
  desc "Noiseless Browsing – Content Blocker for Safari"
  homepage "https://oblador.github.io/hush"

  app "Hush.app"
end
