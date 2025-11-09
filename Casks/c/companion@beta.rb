cask "companion@beta" do
  arch arm: "arm64", intel: "x64"

  version "4.1.0+8404-main-624ad91b22"
  sha256 arm:   "94ad832fb7e16319d35cb41ce17eb5bb955c183932f66bf1f6f15052d7e00ff7",
         intel: "9b05bf5cacb4aa38b052ee77c5f14274b2b6b1e0ae0b70b6d769828821670e69"

  url "https://s4.bitfocus.io/builds/companion/companion-mac-#{arch}-#{version}.dmg"
  name "Bitfocus Companion"
  desc "Streamdeck extension and emulation software"
  homepage "https://bitfocus.io/companion"

  disable! date: "2025-09-15", because: :unreachable

  depends_on macos: ">= :big_sur"

  # Companion beta does not share preferences with the stable branch, so can be installed side by side
  app "Companion.app", target: "Companion Beta.app"

  zap trash: [
    "~/Library/Application Support/@companion-app",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/test-companion.bitfocus.no.sfl*",
    "~/Library/Application Support/companion",
    "~/Library/Application Support/companion-launcher",
    "~/Library/Preferences/companion-nodejs",
    "~/Library/Preferences/test-companion.bitfocus.no.plist",
  ]
end
