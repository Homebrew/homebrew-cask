cask "amiberry" do
  version "8.0.0"
  sha256 "701b75af6d0e612fa77d476ad0aa81ae1fcef85c2e95615177fad7c2b4c8fa44"

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
