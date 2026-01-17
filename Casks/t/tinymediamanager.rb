cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.5"
  sha256 arm:   "cadb91cced939396c0db20cdc8af4f2383dc6cecc254751f580d2a1486a8378a",
         intel: "8434b4890e81b13eb3a3526249e55db80e883421ec61539c4eecf2625a569847"

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
