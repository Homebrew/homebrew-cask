cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.11"
  sha256 arm:   "da28a2b9d6a5d88e0851b451abecbe88b118b88c648f4a92abc334f470ec0f85",
         intel: "4e31ed57e0e7cf362c6e642d6561d41cd378fa7942cff217ec98ebf43f9728c1"

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
