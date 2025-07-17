cask "pinegrow" do
  arch arm: "ARM64", intel: "X64"

  version "8.5"
  sha256 arm:   "5cfc3a1d79d0ae226278970968b98c921422ef9abceb65c76e3907bb83413cf2",
         intel: "e4c65bd150877ec598a6ae301552e78b6974497052a05c83f84ec5beb999602c"

  url "https://download.pinegrow.com/PinegrowMac#{arch}.#{version}.dmg"
  name "Pinegrow"
  desc "Web editor"
  homepage "https://pinegrow.com/"

  livecheck do
    url "https://docs.pinegrow.com/wp-json/wp/v2/pages/1698"
    regex(%r{href=.*?/PinegrowMac#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "Pinegrow.app"

  zap trash: [
    "~/Library/Application Support/Pinegrow",
    "~/Library/Caches/Pinegrow",
    "~/Library/Preferences/com.pinegrow.pinegrow.plist",
    "~/Library/Saved Application State/com.pinegrow.pinegrow.savedState",
  ]
end
