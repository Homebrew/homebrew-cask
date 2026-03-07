cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.8"
  sha256 arm:   "79551e9e8388f78c17be486c838805703db0801a1ceff8fa557e373f6eafd573",
         intel: "ff5ef976ceba009588b4d6564ffc4f40c5041008e24702e57d46d908b50e3a2d"

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
