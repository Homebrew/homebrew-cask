cask "serial-studio" do
  version "3.1.3"
  sha256 "75682a2d39c1dd95c8d37aeb08d61a8c73f5a9b29f1e62f6a8c256a1b484ff8b"

  url "https://github.com/Serial-Studio/Serial-Studio/releases/download/v#{version}/Serial-Studio-#{version}-macOS-Universal.dmg",
      verified: "github.com/Serial-Studio/Serial-Studio/"
  name "Serial Studio"
  desc "Data visualisation software for embedded devices and projects"
  homepage "https://serial-studio.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Serial Studio.app"

  zap trash: [
    "~/Library/Caches/Alex Spataru/Serial-Studio",
    "~/Library/Preferences/io.github.serial-studio.Serial-Studio.plist",
    "~/Library/Saved Application State/org.alexspataru.serial-studio.savedState",
  ]
end
