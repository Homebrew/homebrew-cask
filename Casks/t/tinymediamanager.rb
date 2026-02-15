cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.7.1"
  sha256 arm:   "0525fc15dfad3f4dcbfc3447e8f4812da0ed3e8742a426b8791a9efc2a3ab6e9",
         intel: "2403a947ebe5eb6b3c85275d00d4035af225a6f2f5bf1adad0aa9d9d9d6668ab"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager-#{version}-macos-#{arch}.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "tinyMediaManager.app"

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Saved Application State/org.tinyMediaManager.tinymediamanager.savedState",
  ]
end
