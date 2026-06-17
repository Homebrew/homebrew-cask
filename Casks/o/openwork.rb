cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.1"
  sha256 arm:   "ab78124b2625aff78b31f06fc8fbb0e52f60b7d7f250e6d9753966deece43a40",
         intel: "14130d4699714933963a6fef64d58cd4e0236b720f961868e287730b65fbff3a"

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
