cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.9"
  sha256 arm:   "c52213d069fb8494b61b1068a3df21a6e79cef4c521023739e20f305ebe31e9c",
         intel: "ebf83e8cfa52c4ed3fe8205bd5828fd560fa199c8d1e2676c8c5172c9ec84efe"

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
