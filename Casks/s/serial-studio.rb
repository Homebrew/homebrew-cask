cask "serial-studio" do
  version "3.2.3"
  sha256 "1258b86bfd8f88ce6e32374015cc37d6036b409ac10c53183fb8d69fae1422a2"

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
