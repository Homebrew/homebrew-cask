cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.3.4"
  sha256 arm:   "886f6e826b5d877edde7d84bceb41078674ca6823a1a140ad9053959ad44267a",
         intel: "548e89fd929499a1affac5173fd072b7e166b7d434f9f01ac236646b1ecaf23b"

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
