cask "stretchly" do
  arch arm: "-arm64"

  version "1.13.1"
  sha256 arm:   "eca5d39db3061127a2b984ab1283a2d6619c08dd9644eca72f5291509f1dda21",
         intel: "2f22b63ce5f8bd05b0248218b9af5555535901d2a287fd896a5ae281196976e5"

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
