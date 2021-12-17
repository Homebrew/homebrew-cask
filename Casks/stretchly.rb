cask "stretchly" do
  version "1.8.1"
  sha256 "575758887927f79985fc5f1413ff138cd5fd55aa9332bfccdfe5df3797d9670a"

  url "https://github.com/hovancik/stretchly/releases/download/v#{version}/stretchly-#{version}.dmg",
      verified: "github.com/hovancik/stretchly/"
  name "Stretchly"
  desc "Break time reminder app"
  homepage "https://hovancik.net/stretchly/"

  app "Stretchly.app"
end
