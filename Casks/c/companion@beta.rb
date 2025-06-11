cask "companion@beta" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "intel"

  version "4.1.0+8092-main-a1fed51758"
  sha256 arm:   "27390524c789dcb6e6ebc13edfc271825769e77165f572997ece3f2133d1d364",
         intel: "07be908f803fa76a413f2b546faf4f76e169b493d94d9e1ebb9a3e9aed9d13ef"

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
