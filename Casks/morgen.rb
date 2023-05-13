cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "2.7.0"
  sha256 arm:   "2bbeb4de6f8b6f19af79e7ce9503dde8c8924787ae96c2941c3ede35bb62b752",
         intel: "23d5bb4f92b27169060e95158653e288b9e00f799639687da1cd6737b93d879d"

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
