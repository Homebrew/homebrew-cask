cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.8"
  sha256 arm:   "97a7e754538c301994817ed3eae8355436115e9740904de6b95d05394e9b8d43",
         intel: "c78c945b4b4e4cf9703b29399175ee3197d3ec1230bc264b8a110222622457ce"

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
