cask "amiberry" do
  version "8.1.1"
  sha256 "ed8ac8bec9bcfa2a211ee24cac6db30c1f3739b821262ca8459b732458ed8867"

  url "https://github.com/BlitterStudio/amiberry/releases/download/v#{version}/Amiberry-#{version}-Darwin.dmg",
      verified: "github.com/BlitterStudio/amiberry/"
  name "Amiberry"
  desc "Amiga emulator"
  homepage "https://amiberry.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Amiberry.app"

  zap trash: "~/Library/Application Support/Amiberry"
end
