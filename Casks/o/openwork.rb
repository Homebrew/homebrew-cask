cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.13.9"
  sha256 arm:   "bd5184505dea4684ce42fb6d79d79dcbb6899c7dc891cf3b7a2a6edc246b3b51",
         intel: "b201f144c0c41f8f791dfab8c087ac036998d88d6eb707dd428069317f3db395"

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
