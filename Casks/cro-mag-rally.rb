cask "cro-mag-rally" do
  version "3.0.0"
  sha256 "09acf7d859fceb11bdc0cb99c1dc7e2bf6b32bedbd786212177baa6042a6dd4d"

  url "https://github.com/jorio/CroMagRally/releases/download/#{version}/CroMagRally-#{version}-mac.dmg",
      verified: "github.com/jorio/CroMagRally/"
  name "Cro-Mag Rally"
  desc "Prehistoric-themed 3D racing game from Pangea Software"
  homepage "https://pangeasoft.net/cromag/"

  app "Cro-Mag Rally.app"
  artifact "Documentation", target: "#{Dir.home}/Library/Application Support/CroMagRally"

  zap trash: [
    "~/Library/Preferences/CroMagRally",
    "~/Library/Saved Application State/io.jor.cromagrally.savedState",
  ]
end
