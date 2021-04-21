cask "mutify" do
  version "1.1.1,8"
  sha256 :no_check

  url "https://storage.mutify.app/data/Mutify.dmg"
  name "Mutify"
  homepage "https://mutify.app/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Mutify.app"

  zap trash: [
    "~/Library/Application Support/MutifyAgent",
    "~/Library/Cookies/com.pixel-point.MutifyAgent.binarycookies",
    "~/Library/Preferences/com.pixel-point.Mutify.plist",
    "~/Library/Preferences/com.pixel-point.MutifyAgent.plist",
  ]
end
