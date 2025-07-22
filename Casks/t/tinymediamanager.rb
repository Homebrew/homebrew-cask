cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.1.8"
  sha256 arm:   "b6b66ea6800b3375d63552ae590ed8b9888952c6e35069ee251efd13515a252e",
         intel: "7ce0403bebc13c76c91dae6452daa5ed43469cadb80a1ac83718637619d3c149"

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
