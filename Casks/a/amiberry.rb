cask "amiberry" do
  version "8.4.1"
  sha256 "cafe95d4180723ffefe5c3835c627339f8a6386d83c2b2619064ce6cddda1a82"

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

  zap trash: "~/Library/Application Support/Amiberry"
end
