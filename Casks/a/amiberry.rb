cask "amiberry" do
  version "8.4.0"
  sha256 "e5bc85601647010ee662c39e796abfdfffc29591e61270be32d713a21f7d8264"

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
