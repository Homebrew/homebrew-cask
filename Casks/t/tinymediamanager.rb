cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.1.7"
  sha256 arm:   "8dd8fc1b5b1a0af4edc23cdc2c12a93e15dba638f07dfe0bd10f40850bc2225d",
         intel: "6b4ce90bf4aaf17175c8793d868ae453001d243996d267d66a434f9bb1bdb128"

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
