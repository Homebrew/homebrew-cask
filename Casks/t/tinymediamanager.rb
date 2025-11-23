cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.3"
  sha256 arm:   "18aec09609fc8bb7e1fdcc7ee2d07daf36f88cec222ee93430f6b9a749a1b3db",
         intel: "88004f256237e9a1f38b0a594c803d3e9f20a2c101143500929150ba488f56a5"

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
