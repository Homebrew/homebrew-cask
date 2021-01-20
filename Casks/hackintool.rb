cask "hackintool" do
  version "3.5.3"
  sha256 "3d659d7b0afa01ebd67ba7125d03363284b5550e48cdc870b71e05c76ea1a0ea"

  url "https://github.com/headkaze/Hackintool/releases/download/#{version}/Hackintool.zip"
  appcast "https://github.com/headkaze/Hackintool/releases.atom"
  name "Hackintool"
  desc "Hackintosh patching tool"
  homepage "https://github.com/headkaze/Hackintool"

  auto_updates true

  app "Hackintool.app"

  zap trash: [
    "~/Library/Cookies/com.Headsoft.Hackintool.binarycookies",
    "~/Library/Caches/com.Headsoft.Hackintool",
    "~/Library/Caches/com.apple.helpd/Generated/com.Headsoft.Hackintool.help*",
    "~/Library/Preferences/com.Headsoft.Hackintool.plist",
  ]
end
