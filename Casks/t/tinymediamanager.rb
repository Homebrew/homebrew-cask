cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.3.2"
  sha256 arm:   "9e2e282b76cde6dd790f92899a2691cb23ed39103ce6434ae52d088764f12640",
         intel: "d324bfa6a01e307f389873a89d8dc2412b1795542fa5f8b0c025e35e24e73541"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager-#{version}-macos-#{arch}.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "tinyMediaManager.app"

  uninstall quit: "org.tinyMediaManager.tinymediamanager"

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Preferences/org.tinyMediaManager.tinymediamanager.plist",
  ]
end
