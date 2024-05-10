cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.0.5"
  sha256 arm:   "8ed75f5381bf1978c28730ee8db9f6c504401f57a84c7c972eb58af45b3beeb4",
         intel: "fc690cb7e2ba33b6b93de18691330ca36f6fac4e1bae60bcbfff59e28fe9024f"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager_#{version}_macos-x86_64.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(%r{href=.*?/tinyMediaManager[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]x86[._-]64\.dmg}i)
  end

  auto_updates true

  app "tinyMediaManager.app"

  # No zap stanza required
end
