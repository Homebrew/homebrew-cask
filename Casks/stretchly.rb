cask "stretchly" do
  arch arm: "-arm64"

  version "1.12.0"
  sha256 arm:   "9a2d2603c03b7337caef3291e285485405331a0e80304b70c6d170766cbdfb37",
         intel: "58c2d3c77ee05de52ff6c04596220a5050ccca14140d25984dcc39052c11e032"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}#{arch}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"

  caveats <<~EOS
    This application is not signed. See https://github.com/hovancik/stretchly#application-signing for details.
  EOS
end
