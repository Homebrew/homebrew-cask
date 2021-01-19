cask "hackintool" do
  version "3.5.2"
  sha256 "b21d50663695ce817a6c7680af6965e8ed45fecff321db748a4a274d00bb2f41"

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
