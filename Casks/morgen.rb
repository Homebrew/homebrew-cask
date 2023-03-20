cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "2.6.7"
  sha256 arm:   "56cf08f8e08cebbb4d68a400161d1a16ead0d9e6a43c555e3230fd0386a1e796",
         intel: "8fb8a1248820f94e2a0133fe64fd8f4a47b5e2ffe661226c153d521aa388516c"

  url "https://download.todesktop.com/210203cqcj00tw1/Morgen%20#{version}-#{arch}.dmg",
      verified: "download.todesktop.com/210203cqcj00tw1/"
  name "Morgen"
  desc "All-in-one calendars, tasks and scheduler"
  homepage "https://morgen.so/"

  livecheck do
    url "https://download.todesktop.com/210203cqcj00tw1/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Morgen.app"

  zap trash: [
    "~/Library/Application Support/Morgen",
    "~/Library/Preferences/com.todesktop.210203cqcj00tw1.plist",
    "~/Library/Saved Application State/com.todesktop.210203cqcj00tw1.savedState",
  ]
end
