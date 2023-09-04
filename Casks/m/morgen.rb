cask "morgen" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "d5e4e69327b7e34573499c52e79b9a134fbfc1153f14dde965a9b337696ee862",
         intel: "2aa440e591504bdd6ee92f62b15e0f5677075f95ba26232a7d6ca6ba5fb56dc1"

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
