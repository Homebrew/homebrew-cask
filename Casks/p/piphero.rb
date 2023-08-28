cask "piphero" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "3f1af01daa88ced60751f58e7c6379a45fc9807a1b0dc53c2639147ce984c6ff",
         intel: "1822e9e566bfdfa0efbb4a4fc44309ab1ce9cf3f96777a2b13268aa54490ee9d"

  url "https://github.com/pipheroapp/downloads/releases/download/v#{version}/PiPHero-#{version}-mac-#{arch}.dmg",
      verified: "github.com/pipheroapp/downloads/"
  name "PiPHero"
  desc "Menu bar app to picture-in-picture any window"
  homepage "https://piphero.app/"

  app "PiPHero.app"

  zap trash: [
    "~/Library/Application Support/piphero",
    "~/Library/Preferences/com.piphero.app.plist",
  ]
end
