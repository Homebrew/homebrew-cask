cask "amiberry" do
  version "8.1.0"
  sha256 "7e7d00e107bf5f6207cd7f40f31d74ebaced5b14444db829f030ef00d1823e0f"

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
