cask "chrysalis" do
  version "0.11.0"
  sha256 "17c76ebeb0c2dc5e86a84e101998495ad93e86928eed642c908f848e2c7e6ef8"

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
