cask "hackintool" do
  version "3.5.7"
  sha256 "ac5aa4cd877367c7d3f34b3cb12a47fb50661dc5363258183b6087ac1679d4fa"

  url "https://github.com/headkaze/Hackintool/releases/download/#{version}/Hackintool.zip"
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
