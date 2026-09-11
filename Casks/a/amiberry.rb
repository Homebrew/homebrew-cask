cask "amiberry" do
  version "8.3.0"
  sha256 "dd797299f70cec573a09b3f5d1bfbaba8f3b4a5421a776d2555e3b8ef897d718"

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
