cask "tinymediamanager" do
  arch arm: "aarch64", intel: "x86_64"

  version "5.2.6"
  sha256 arm:   "d692a88fbf234e573366ec396ce0b47a8fe12a702cd7c3e6da5d23ca3068890b",
         intel: "6ad0c4882f2f59bb87cd712395afdc669f77cb6085c4baebc06c524567d82e4e"

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
