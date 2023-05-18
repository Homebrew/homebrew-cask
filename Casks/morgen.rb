cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "80fec86039f4e51f35976d5dfd94f5caadf2b1681b1c9d0b898921412520c7e7",
         intel: "dfe3cbc21b105138c3bfa18fb7077d0b150d8cfb86735e332481b34615febd78"

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
