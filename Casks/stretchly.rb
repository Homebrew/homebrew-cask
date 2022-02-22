cask "stretchly" do
  version "1.10.0"
  sha256 "d5bff265d0d3142af98629b648ec4d39d4058aaad4d55a8f4780f1682ce1a471"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
