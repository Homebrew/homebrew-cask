cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.1"
  sha256 arm:   "d052d8af85c6de82894b227facf9068229c95aa21acc8569a5e20915fbd7f81c",
         intel: "30197c65fa31787d9f05e06babb47ce4015f11a26507fb1fb33c87ce59b36b8b"

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
