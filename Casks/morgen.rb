cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "2.7.4"
  sha256 arm:   "e6f544f2f05fc80b8dbae8f95fd2e7c3e4689fd6988680d114d88394178eb8a6",
         intel: "e5be5742143062700a6c6c7f007fc54639a7d185a6fc8882e875bce1499323f8"

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
