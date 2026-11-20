cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "10.01"
  sha256 arm:   "7b11197b37eb0458a75fcfbf49f4afb4686f42c688fb9e30192f5d6cf394c8d5",
         intel: "f3f2cf29a27029000aeae2f69a634d796bf1c2d99be4c81f10acdde31da07e91"

  url "https://github.com/Pinegrow/PinegrowReleases/releases/download/pg#{version}/PinegrowMac#{arch}.#{version}.dmg"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/^pg(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
