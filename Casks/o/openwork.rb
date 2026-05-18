cask "openwork" do
  arch arm: "arm64", intel: "x64"

  version "0.13.10"
  sha256 arm:   "8ead2aa261bf6e1157515e81da5b445d6bbc365c95fc87b8f034754b00e7ca37",
         intel: "23757f88eb2cee3b886eabc2282eea5e79534f3dd91e03086465386ebf01cd86"

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
