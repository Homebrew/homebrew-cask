cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "e9be78141659d4634df90dc16f726e5c5803f550d5db79e82780c80e05ea6068",
         intel: "6ed891435e0c0b8a7a59606ac92fa1e0881e8780f5f7285311fc2bbac96f0610"

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
