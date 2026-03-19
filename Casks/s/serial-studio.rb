cask "serial-studio" do
  version "3.2.5"
  sha256 "4864f0e27fa6d5eca0b4e21944b4cdaf77ef43735e0606f6e4aaa403ecdfa7eb"

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
