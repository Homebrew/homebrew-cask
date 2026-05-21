cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.13.11"
  sha256 arm:   "373e7024d428705d6c1536447ea100885cebccdd5978630e0a8d732afae8d331",
         intel: "473ee8b836719ae8a7378f4aa9c08fd5501146cf2663c97687a5aac8951c2d13"

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
