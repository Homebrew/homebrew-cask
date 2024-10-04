cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.12"
  sha256 arm:   "afa530163d9f44a8678b789dd82acc63ceed3c947327dd5fd2c4e8047a7defdd",
         intel: "093e2d8d7a294568fa5d88aa4617791f9d433a42ed6c0f456ba17ea39b06f4e4"

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
