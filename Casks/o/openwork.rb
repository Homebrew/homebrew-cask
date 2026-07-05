cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.11"
  sha256 arm:   "73be8307227af8f44998ee740d56ebd0133067a851cdc4659d6311137fc09c0f",
         intel: "23c6729c756c64b82316070a0ebecd7af443a1f4d5f3428b9dcadb48c59b4fbe"

  url "https://github.com/different-ai/openwork/releases/download/v#{version}/openwork-mac-#{arch}-#{version}.dmg",
      verified: "github.com/different-ai/openwork/"
  name "OpenWork"
  desc "Unofficial desktop GUI for OpenCode"
  homepage "https://openworklabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "OpenWork.app"

  zap trash: [
    "~/Library/Application Support/OpenWork",
    "~/Library/Caches/OpenWork",
    "~/Library/Preferences/com.differentai.openwork.plist",
  ]
end
