cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.15.4"
  sha256 arm:   "b8cb4b296bd02cf5f5bbbef18e5357875b29050007c35e4d9259c0f397218eaa",
         intel: "701629fe07b3b97dc3dbc6463112cec5f4c6d0a908743f7cd0033c07ed8bf07a"

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
