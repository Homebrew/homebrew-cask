cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.0"
  sha256 arm:   "9f6b1fac3986307d7908e74fe4df411c5ceec47865527fc8c44a3b4b0824c349",
         intel: "b35e2087431144511308a1b09ac9a0e811f2a12ea7ac2bfd0b7350fd75817fb0"

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
