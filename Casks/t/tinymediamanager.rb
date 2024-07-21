cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.8"
  sha256 arm:   "f7eaaa86b52d675f4b4f7ca1424326c42de6f89ac0711a209816bf4a46a9cb89",
         intel: "86f827167667ba9bb5abae796b10235b69e791198d1ecd198c3de40af2087d2d"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager-#{version}-macos-#{arch}.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true

  app "tinyMediaManager.app"

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Saved Application State/org.tinyMediaManager.tinymediamanager.savedState",
  ]
end
