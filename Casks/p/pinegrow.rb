cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "8.2"
  sha256 arm:   "cd569ec4bc60639c2a6326ce2efca7c58ffcef2ecfaf814ce87cc0100803cea6",
         intel: "3b0d631c2fc4e3a62671216c916a9f4f1be31139998bc45ee4aa144af2097913"

  url "https://download.pinegrow.com/PinegrowMac#{arch}.#{version}.dmg"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url "https://docs.pinegrow.com/wp-json/wp/v2/pages/1698"
    regex(%r{href=.*?/PinegrowMac#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
