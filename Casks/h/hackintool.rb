cask "hackintool" do
  version "4.0.3"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://github.com/headkaze/Hackintool/releases/download/#{version}/Hackintool.zip"
  name "Hackintool"
  desc "Hackintosh patching tool"
  homepage "https://github.com/headkaze/Hackintool"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Hackintool.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/com.Headsoft.Hackintool.help*",
    "~/Library/Caches/com.Headsoft.Hackintool",
    "~/Library/Cookies/com.Headsoft.Hackintool.binarycookies",
    "~/Library/Preferences/com.Headsoft.Hackintool.plist",
  ]

  caveats do
    requires_rosetta
  end
end
