cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.11"
  sha256 arm:   "cb421106465058af0d63f12122f9d50fd825081ae42ac56a02f9bcd21467ab77",
         intel: "0f4f59e264fe08bdcccb0603fe3b51b3ba6e6ec008ef0c5c8c5d78a714e0a9bd"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager-#{version}-macos-#{arch}.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "tinyMediaManager.app"

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Saved Application State/org.tinyMediaManager.tinymediamanager.savedState",
  ]
end
