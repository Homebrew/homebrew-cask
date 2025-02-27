cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.1.3"
  sha256 arm:   "135edc92de7cdaf21bb21953fae98d4a16b1b284ba1298d27a076f06e8168fe8",
         intel: "892523ca511da39ec54c101272a2f0abaccad2969c034a1bec38f4540f098233"

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
