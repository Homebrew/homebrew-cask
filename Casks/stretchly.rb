cask "stretchly" do
  version "1.7.0"
  sha256 "fc0d3a3a26e24d1b8b262b5b2142c6057bf47cf3e452fd3b68c49b4eea611095"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
