cask "piphero" do
  version "1.0.0"
  sha256 "3f1af01daa88ced60751f58e7c6379a45fc9807a1b0dc53c2639147ce984c6ff"

  url "https://github.com/pipheroapp/downloads/releases/download/v#{version}/PiPHero-#{version}-mac-arm64.dmg",
      verified: "github.com/pipheroapp/downloads/"
  name "PiPHero"
  desc "Menu bar app to picture-in-picture any window"
  homepage "https://piphero.app/"

  app "PiPHero.app"
end
