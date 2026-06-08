cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.15.2"
  sha256 arm:   "c658661ad0c411da78610ce0498e9245314773e51e6402f2aaf976cd77fefbd0",
         intel: "c160764bd25e81771aad87f9d269abcbbbb95798a16812d0eb963889e9cf9e8b"

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
