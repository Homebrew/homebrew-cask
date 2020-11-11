cask "hackintool" do
  version "3.4.7"
  sha256 "ddc560aa59e58634314611619674da9fc9aebdae572e317a1f15d50086ac5546"

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
