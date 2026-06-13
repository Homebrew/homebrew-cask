cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.16.4"
  sha256 arm:   "69f5b668e4f31338089d52d61b549f4208d1f38191478de55613ca9a2e096a4e",
         intel: "1c344d4d37accc22e52597f73d45d0b00b7fa5081c5353f4d94e11df2d00a949"

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
