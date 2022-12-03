cask "only-switch" do
  version "2.3.8"
  sha256 "ed0b3b78c4914724b49a0cb3d3de7302f7d53b4a58205cc7099f96e1b1803927"

  url "https://github.com/jacklandrin/OnlySwitch/releases/download/release_#{version}/OnlySwitch.dmg"
  name "OnlySwitch"
  desc "System and utility switches"
  homepage "https://github.com/jacklandrin/OnlySwitch"

  livecheck do
    url :url
    regex(%r{href=["']?[^"' >]*?/tag/release[._-]v?(\d+(?:\.\d+)+)["' >]}i)
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Only Switch.app"

  zap trash: [
    "~/Library/Application Support/OnlySwitch",
    "~/Library/Caches/jacklandrin.OnlySwitch",
    "~/Library/OnlySwitch",
    "~/Library/Preferences/jacklandrin.OnlySwitch.plist",
  ]
end
