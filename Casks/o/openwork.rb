cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.5"
  sha256 arm:   "9dbcc2c7f19b2d98258b93b79dec35660e9d1ac99cf92064588c230eea67a604",
         intel: "2b22c92f3b0e732e8a2612ae3f1bf2bb17fe720672b44ae46c236249461b1e4c"

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
