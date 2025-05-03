cask "companion@beta" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "4.0.0+7962-main-990dff69"
  sha256 arm:   "9126430b358af52861236f930ef1d144a2139b219084a440ef7a62f04471e2ad",
         intel: "3ec5dfeca4b0b66d1e50ed3dd14dd545435a96a308519cf458173c6490926c46"

  url "https://s4.bitfocus.io/builds/companion/companion-mac-#{arch}-#{version}.dmg"
  name "Bitfocus Companion"
  desc "Streamdeck extension and emulation software"
  homepage "https://bitfocus.io/companion"

  livecheck do
    url "https://api.bitfocus.io/v1/product/companion/packages?branch=beta&limit=150"
    strategy :json do |json|
      json["packages"]&.select { |c| c["target"] == "mac-#{livecheck_arch}" }
                      &.map { |c| c["version"] }
    end
  end

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
