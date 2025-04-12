cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.1.5"
  sha256 arm:   "21b1007277e9f9476ab932137d3f66ad8b19dd458f03cacd0115fdd74428e3d4",
         intel: "d95bad03c873b2a9aebb290d15c12f4343a3dc673669e55857dcd096a2ab027c"

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
