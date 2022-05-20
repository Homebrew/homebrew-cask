cask "chrysalis" do
  version "0.9.2"
  sha256 "fd4482997b207e8792591e8bc8ed120641dee745e014e0896b8a42d01bd1f2b0"

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
