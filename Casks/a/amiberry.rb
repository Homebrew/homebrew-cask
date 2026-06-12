cask "amiberry" do
  version "8.2.0"
  sha256 "be132fa1e62083a166df0cb035c46a96285f36d2b014eed06f53fea1d732f482"

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
