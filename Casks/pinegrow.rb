cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "7.05"
  sha256 arm:   "8324ab5f7556798b6b831918ff09abf16403bdb940b01fd854c526a26e196a08",
         intel: "d7ebe0a6145ae0a3d094a8bbdb8230c27fb64a44a23c9c98ed95afd0774eefe9"

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
