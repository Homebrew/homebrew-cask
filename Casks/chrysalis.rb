cask "chrysalis" do
  version "0.9.3"
  sha256 "3d7cc21a4027974338b6751dd632713695552211c8f7a5fd3de1b0a975f619bd"

  url "https://github.com/keyboardio/Chrysalis/releases/download/v#{version}/Chrysalis-#{version}.dmg"
  name "Chrysalis"
  desc "Graphical configurator for Kaleidoscope-powered keyboards"
  homepage "https://github.com/keyboardio/Chrysalis"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Chrysalis-(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Chrysalis.app"

  zap trash: [
    "~/Library/Application Support/chrysalis",
    "~/Library/Preferences/keyboardio.chrysalis.plist",
  ]
end
