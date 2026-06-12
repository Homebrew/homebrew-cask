cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.16.2"
  sha256 arm:   "2f09c92fbc401337d2e13a7d13cd10b2a1324701c97064fadc567b5db64b190f",
         intel: "4ca111ad73701efe36ee387436d00a6bc777c56f2379a9c217c23293454a1b42"

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
