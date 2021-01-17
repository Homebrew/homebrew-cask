cask "chrysalis" do
  version "0.8.0"
  sha256 "fbaf1e04a006f37e51597b208a9dc445f7383f4c255f3583fa3a9d05b32fbd6e"

  url "https://github.com/keyboardio/Chrysalis/releases/download/chrysalis-#{version}/Chrysalis-#{version}.dmg"
  name "Chrysalis"
  desc "Graphical configurator for Kaleidoscope-powered keyboards"
  homepage "https://github.com/keyboardio/Chrysalis"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Chrysalis-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "Chrysalis.app"

  zap trash: [
    "~/Library/Application Support/chrysalis",
    "~/Library/Preferences/keyboardio.chrysalis.plist",
  ]
end
