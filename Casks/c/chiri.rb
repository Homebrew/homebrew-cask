cask "chiri" do
  arch arm: "aarch64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "f1922ce81a4fd079b581b720ef4fc5f152bf97b3cea5e80e443d15e0fe5f4b7f",
         intel: "3d31a895ebc810ed790b8d525025f647ec81e5bd678cc680d3917ab960915faf"

  url "https://github.com/chiriapp/chiri/releases/download/app-v#{version}/Chiri_#{version}_#{arch}.dmg"
  name "Chiri"
  desc "CalDAV-compatible task management app"
  homepage "https://github.com/chiriapp/chiri"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Chiri.app"

  zap trash: [
    "~/Library/Application Support/moe.sapphic.Chiri",
    "~/Library/Caches/moe.sapphic.chiri",
    "~/Library/Logs/moe.sapphic.chiri",
    "~/Library/Preferences/moe.sapphic.Chiri.plist",
    "~/Library/WebKit/moe.sapphic.Chiri",
  ]
end
