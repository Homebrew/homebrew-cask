cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.3.5"
  sha256 arm:   "a5187f06abf3d455f0f425ecfdaef9f5338950ecbac56150df438dbef03087cb",
         intel: "bdd52fcacb5eadbf33ca550533d5cdb17c99bce7d87ad3a141e890a6af1cf7c5"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager-#{version}-macos-#{arch}.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on :macos

  app "tinyMediaManager.app"

  uninstall quit: "org.tinyMediaManager.tinymediamanager"

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Preferences/org.tinyMediaManager.tinymediamanager.plist",
  ]
end
