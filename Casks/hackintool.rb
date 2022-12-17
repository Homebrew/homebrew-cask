cask "hackintool" do
  version "3.9.1"
  sha256 "724ca26f95190cd82ad2d6d324b36266a02f439534c86e7c4849c341bcc97ef5"

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
