cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.16.0"
  sha256 arm:   "66372b6da13e510364250634420abe6177d535bed8ad42e951d50796a7293df5",
         intel: "8cdcd40f29a101d98f13b54370fb49b8b2ac001223ec8c45bc9ede75b41adf35"

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
