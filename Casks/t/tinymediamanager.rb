cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.6"
  sha256 arm:   "32d3ce907e01641340cc79837ff6935fb06dfbd61f77e71b29b1283022e988be",
         intel: "fa78e2801bbb83e2df1ec48ee0e9954f6e85f99f5e4cc5e8f4eee6093e3ddb36"

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
