cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.1.2"
  sha256 arm:   "be6158ef43427fbcba77d832aa711688535a4553c82e129c17906dece2e04cc3",
         intel: "98307c118aadcb92286a61ca314abb3cf8f5a414d046d97e081a7cbb3a3f452f"

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
