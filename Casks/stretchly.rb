cask "stretchly" do
  version "1.4.0"
  sha256 "837b796f07545fdd67a2c6b5f76f7ee0d9eea0af52a09360d7abeed1c80d732d"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg",
      verified: "github.com/hovancik/stretchly/"
  appcast "https://github.com/hovancik/stretchly/releases.atom"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
