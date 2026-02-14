cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.7"
  sha256 arm:   "825192dd29cef502d68eb09d1a0d96ca784e3f4edda9dd4855dd6c2d8529874d",
         intel: "1dd70a6ac6a2ed8e33184c7f3393aae464bd45db39654f824e1d86d12a3559e6"

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
