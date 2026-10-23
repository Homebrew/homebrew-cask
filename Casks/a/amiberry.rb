cask "amiberry" do
  version "8.4.2"
  sha256 "9076ede3197e2d959bb20b1dba45a99f9eebbb4cfe4a06c1dfd8d13cbd0fd455"

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
