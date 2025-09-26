cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.2"
  sha256 arm:   "20e3d32625427a7a0d9b3fa3adfedab8a64f4c1299f9bfe50e2b2ad7b953110f",
         intel: "44ea257dfd15c8d864ff25e08ff6df316ad6b8b6278578807a4f5ce9296ce601"

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
