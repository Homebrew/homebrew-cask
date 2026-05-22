cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.13.12"
  sha256 arm:   "73591312288e617cca37a711db4c2ccc242f2c6a0b83bd9c5dc7b4d90fa794f9",
         intel: "d7c83b47d55809d868643b70d4058627487b3bc622766191e20df29cdccddd44"

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
