cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.3"
  sha256 arm:   "8a2c06350da68b9ef3a0b3477d3287ada69a3d175691b6f40743d7cd9b43e562",
         intel: "6349bfa5db7cb8ebcc65add23febea7e9c74f3b8929a0632fd9dcaeb8316f87e"

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
