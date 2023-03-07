cask "smartsvn" do
  arch arm: "aarch64", intel: "x86_64"

  version "14.2.2"
  sha256 arm:   "7eae47423b65df4a3dbefde3f34175bd123340d537f3694b58e4026fcadf03e7",
         intel: "43d8ec95ce3e8b4a40a08a0ceff76c9d06f282ab3d211e2e6e37a7bb61ec8a3a"

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-#{arch}-#{version.dots_to_underscores}.dmg"
  name "SmartSVN"
  desc "Subversion client"
  homepage "https://www.smartsvn.com/"

  livecheck do
    url "https://www.smartsvn.com/documents/smartsvn/changelog.txt"
    regex(/SmartSVN\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "SmartSVN.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsvn.plist",
    "~/Library/Preferences/SmartSVN",
    "~/Library/Saved Application State/com.syntevo.smartsvn.savedState",
  ]
end
