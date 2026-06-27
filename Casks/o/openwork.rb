cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.4"
  sha256 arm:   "4adb0ff9e3a518022b0f3d5bbc066a75ec3209e7b97a1eb7da531ec27df638c4",
         intel: "50a58f335a04125ecbd1f99b622e7de93178dcf2db0bafca59bd0146c67c47ff"

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
