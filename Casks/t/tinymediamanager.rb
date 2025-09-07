cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.1"
  sha256 arm:   "2eeb9a7da1f45705adf55bee1d9dc5ccf7160fb592add4df1e5240db3f95ebea",
         intel: "3d7c5dc7e1703ae8557ef6a98eecece5104f229933b41aae1e5030e13310b0c4"

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
