cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.3.1"
  sha256 arm:   "92102f920a1b13ccd29b657569a74ad047267035bf6a98eb7147ae9aefd6d926",
         intel: "be0b1ea128d9e55ab46bc7e58a361daa2b9682c6b85ce8f476749008975a2e0f"

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
