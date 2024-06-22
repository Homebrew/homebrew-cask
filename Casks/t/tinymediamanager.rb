cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.7"
  sha256 arm:   "d00768734268bbd844b480ab4a6c3f44b69464149930cd507af648dcd1f0a27a",
         intel: "0a6ad229239ea1d5d37532ee9430234babb297bf7908fc3d9d080ba838899622"

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
