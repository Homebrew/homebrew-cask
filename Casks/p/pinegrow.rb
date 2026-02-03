cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "9.01"
  sha256 arm:   "25a6e5462ab964037eaf32b22667f6449fc67010771ddcba4a70dddc21ec1f9a",
         intel: "46d7ae810276286a9c0a6981fd5bf891556222338a1cdf77f1b9349152fa769d"

  url "https://download.pinegrow.com/PinegrowMac#{arch}.#{version}.dmg"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url "https://docs.pinegrow.com/wp-json/wp/v2/pages/1698"
    regex(%r{href=.*?/PinegrowMac#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
