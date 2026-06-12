cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.16.3"
  sha256 arm:   "055b68701a86884188a7aebb55a4cc0f09d2b3683f414b51f2c2d231bdd09522",
         intel: "8e910cd48db7e0dff9cdee353950ca728aa383ea076c32dc09edf0c1bd64c3f6"

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
