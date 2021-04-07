cask "stretchly" do
  version "1.5.0"
  sha256 "997741ee3ff14d17a84093e45f5314963c174df2c5cd01417b68320c69220551"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
