cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.15.3"
  sha256 arm:   "11f7e2bb09dd9108509a2372b5fceadd93ea815285f85bec16848f9d22cf0847",
         intel: "ca3b05f0c4abc3f7f70e8620657084dc7efbda77f02b952b1cac3a27795cd3b8"

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
