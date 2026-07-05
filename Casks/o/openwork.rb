cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.10"
  sha256 arm:   "4f088d353e0e0258fa36e374d77b4e5a14d2822b4fef425afd2f74e2379ff34f",
         intel: "3c62ad09522e4a88b82bc1469eee5f204549ed18e4e86ef3d14f926112f3fed7"

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
