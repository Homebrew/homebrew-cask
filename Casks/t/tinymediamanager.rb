cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.1.1"
  sha256 arm:   "e1c30083d09a1030516c41d7a9cddbf96c6a36e0997814ba096d361d00df3295",
         intel: "891ed4dc9765dc0a6d9dcda82e8e04fab84b212502d09883e933878cb97227b1"

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
