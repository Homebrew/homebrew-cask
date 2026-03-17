cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.9"
  sha256 arm:   "d384a6af922c5830c4a56a9aa8efc8e0e36b1510df72da0d2e9749005407ffc3",
         intel: "4fbffa911e82d8b539c5f11ce31becbb36229c5ad70812ecb3c4ecb675d91ccb"

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
