cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.17.7"
  sha256 arm:   "44faf77670f664f84d68b3503fe6c77fffecff06d48e8f26e0c22a4605f43a80",
         intel: "301dd3fac8edd2c52380b34a1f89f19eae73f1494d06f67a17faa401d61d2e14"

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
