cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.9"
  sha256 arm:   "d7fedb99f17f8477bde8501a96399bd7a208830b2605100c29cfe15869d6770b",
         intel: "09acac0ec95d2a8ba178026481556078eb76b48781be0cb6f003b0a498e3bbc6"

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
