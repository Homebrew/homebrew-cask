cask "serial-studio" do
  version "3.2.2"
  sha256 "fbef4366c6fe502b454bb399af1c0b6a943d7dc7e84b34cba97deb9c9cd1e14b"

  url "https://github.com/Serial-Studio/Serial-Studio/releases/download/v#{version}/Serial-Studio-Pro-#{version}-macOS.dmg",
      verified: "github.com/Serial-Studio/Serial-Studio/"
  name "Serial Studio"
  desc "Data visualisation software for embedded devices and projects"
  homepage "https://serial-studio.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Serial Studio Pro.app"

  zap trash: [
    "~/Library/Caches/Alex Spataru/Serial-Studio",
    "~/Library/Preferences/io.github.serial-studio.Serial-Studio.plist",
    "~/Library/Saved Application State/org.alexspataru.serial-studio.savedState",
  ]
end
