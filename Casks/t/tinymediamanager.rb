cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.13"
  sha256 arm:   "e9e705a55e278d2fe4f4472b3a0d5353a5d0ccbab78ac70aaec10949dc0fbf7f",
         intel: "4b9efdf090f2fa5ced5deda83c18f5a11bcf59d5ed3c2ddf02c53bc973b8a6ec"

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
