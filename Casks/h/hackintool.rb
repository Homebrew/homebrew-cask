cask "hackintool" do
  version "4.1.5"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://github.com/headkaze/Hackintool/releases/download/#{version}/Hackintool.zip"
  name "Hackintool"
  desc "Hackintosh patching tool"
  homepage "https://github.com/headkaze/Hackintool"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true

  app "Hackintool.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.Headsoft.Hackintool.help*",
    "~/Library/Caches/com.Headsoft.Hackintool",
    "~/Library/Cookies/com.Headsoft.Hackintool.binarycookies",
    "~/Library/Preferences/com.Headsoft.Hackintool.plist",
  ]
end
