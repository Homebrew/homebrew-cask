cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "2.6.9"
  sha256 arm:   "020136d2f001775b65a8663d23e7c376b94a47f7ec34c4bb03e552aea2f95620",
         intel: "8a4cba22eb81093250a7e96b6638c55128a12e7a9396748ec15e98dd2ce7a03e"

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
