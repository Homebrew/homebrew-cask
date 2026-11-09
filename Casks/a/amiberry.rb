cask "amiberry" do
  version "8.5.0"
  sha256 "002bb71af68a86a23c2779258248af71683c6a56caf74cf716e40081b5df9e7a"

  url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/Amiberry-#{version}-macOS-universal.dmg"
  name "Amiberry"
  desc "Amiga emulator"
  homepage "https://amiberry.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Amiberry.app"

  zap trash: "~/Library/Application Support/Amiberry",
      rmdir: "~/Documents/Amiberry"
end
