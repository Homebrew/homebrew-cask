cask "stretchly" do
  version "1.3.0"
  sha256 "cae31b31a419ce49d45cb15b749d41ccd108c678a08d4c4fe0728b9bcbf029c5"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg",
      verified: "github.com/hovancik/stretchly/"
  appcast "https://github.com/hovancik/stretchly/releases.atom"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
