cask "hackintool" do
  version "3.5.1"
  sha256 "42a427778d89a6f6ba8c0715796a1e611ed261e069129a006aa0bbfa10306853"

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
