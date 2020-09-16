cask "mutify" do
  version "1.1.1"
  sha256 "761c6cba9f6db885cbc01f82ae2b539be5137adbb75384151ff6d091f3fdae8b"

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
