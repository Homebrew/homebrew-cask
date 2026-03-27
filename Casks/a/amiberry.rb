cask "amiberry" do
  version "8.1.2"
  sha256 "100e7c07dc73594eb2e1eee34b052d2e2c4328831c86fd162e39353796012b60"

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
