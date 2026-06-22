cask "amiberry" do
  version "8.2.2"
  sha256 "46c893316a58ddb3d7c526c155b63d85fee5621c92465ec4ccb91e7270b34656"

  url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/Amiberry-#{version}-macOS-universal.dmg",
      verified: "github.com/BlitterStudio/amiberry/"
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
