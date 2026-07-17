cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.3.0"
  sha256 arm:   "9968885fb3d5d9665ced330405a3226a7a62f8e199d0b5881329f58ed670eac4",
         intel: "38ecfbe26f7eb4b4c855e70b5e0cccd848f25714b0224d7125040373d6742bb7"

  url "https://release.tinymediamanager.org/v#{version.major}/dist/tinyMediaManager-#{version}-macos-#{arch}.dmg"
  name "tinyMediaManager"
  desc "Media management tool"
  homepage "https://www.tinymediamanager.org/"

  livecheck do
    url "https://release.tinymediamanager.org/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  depends_on macos: :big_sur

  app "tinyMediaManager.app"

  zap trash: [
    "~/Library/Application Support/tinyMediaManager",
    "~/Library/Saved Application State/org.tinyMediaManager.tinymediamanager.savedState",
  ]
end
