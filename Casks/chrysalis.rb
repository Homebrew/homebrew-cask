cask "chrysalis" do
  version "0.8.3"
  sha256 "7de803b7e9ffd24b126f2800fb3792a00a34c57993cb5e47533e08538863d3a9"

  url "https://github.com/keyboardio/Chrysalis/releases/download/v#{version}/Chrysalis-#{version}.dmg"
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
