cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.1.4"
  sha256 arm:   "ed661f54a8c2cdc4b13e73f1eb19295a87f5530dcaa5d0bc0418d4e97976044c",
         intel: "857e94c196868acadd2e8a2f064eab831dc41d2f1ac3658e228f09dfecac24e2"

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
