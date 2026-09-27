cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.3.3"
  sha256 arm:   "0d047f4f436a35b4f16a90d484a912cc94b8b008a7663a14f80445450e501b2c",
         intel: "067044a29d57c8ec46620663ef4614501b02cd33a43423edcc9e6348b17b87ef"

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
