cask "piphero" do
  arch arm: "arm64", intel: "x64"

  version "1.2.0"
  sha256 arm:   "0ace00722786d40520f959a4aa08562b4e55cdcfccf138ca0101fd3341d59541",
         intel: "d68da3857add68ed987e51b44ef96a8066c238525e791dde7c013ceab64510a5"

  url "https://github.com/pipheroapp/downloads/releases/download/v#{version}/PiPHero-#{version}-mac-#{arch}.dmg",
      verified: "github.com/pipheroapp/downloads/"
  name "PiPHero"
  desc "Menu bar app to picture-in-picture any window"
  homepage "https://piphero.app/"

  depends_on macos: ">= :catalina"

  app "PiPHero.app"

  zap trash: [
    "~/Library/Application Support/piphero",
    "~/Library/Preferences/com.piphero.app.plist",
  ]
end
