cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.12"
  sha256 arm:   "9e1aec742eaafd856b5b1296801c804fafacd9df181106360862e69e27c3da3a",
         intel: "d35f8a37ba90b108341cdc64eb4b9ec02a5a5cca235cbca0f3a42d20adf2d088"

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

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Saved Application State/org.tinyMediaManager.tinymediamanager.savedState",
  ]
end
