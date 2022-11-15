cask "brave-browser" do
  arch arm: "arm64", intel: "x64"
  folder = on_arch_conditional arm: "stable-arm64", intel: "stable"

  version "1.45.127.0,145.127"
  sha256 arm:   "450ba011a55b48e88843b9201fb2fd09899f9cd34509e9fae8779ae1f6273d83",
         intel: "cf8b481f6d04b934ac4066dd677139b0774ef96689ef1f74053c0b10bcf37c24"

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Browser/#{folder}/#{version.csv.second}/Brave-Browser-#{arch}.dmg",
      verified: "updates-cdn.bravesoftware.com/sparkle/Brave-Browser/"
  name "Brave"
  desc "Web browser focusing on privacy"
  homepage "https://brave.com/"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Browser/#{folder}/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Brave Browser.app"

  zap trash: [
    "~/Library/Application Support/BraveSoftware/Brave-Browser",
    "~/Library/Preferences/com.brave.Browser.plist",
    "~/Library/Saved Application State/com.brave.Browser.savedState",
  ]
end
