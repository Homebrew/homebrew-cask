cask "hackintool" do
  version "3.9.3"
  sha256 "322a39bbabd1bfad027dca2f8eb55e7ba4f276ca01a74987c40c0635a77eefc4"

  url "https://github.com/headkaze/Hackintool/releases/download/#{version}/Hackintool.zip"
  name "Hackintool"
  desc "Hackintosh patching tool"
  homepage "https://github.com/headkaze/Hackintool"

  auto_updates true

  app "Hackintool.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.Headsoft.Hackintool.help*",
    "~/Library/Caches/com.Headsoft.Hackintool",
    "~/Library/Cookies/com.Headsoft.Hackintool.binarycookies",
    "~/Library/Preferences/com.Headsoft.Hackintool.plist",
  ]
end
