cask "enpass" do
  version "6.7.2.887"
  sha256 "459e00bc56bc48aa6d1465ea820062f9c4b18d8abd5d35a1903910f85656fa1a"

  url "https://dl.enpass.io/stable/mac/package/#{version}/Enpass.pkg"
  name "Enpass"
  desc "Password and credentials mananger"
  homepage "https://www.enpass.io/"

  livecheck do
    url "https://www.enpass.io/downloads/"
    regex(%r{href=.*?/(\d+(?:\.\d+)*)/Enpass\.pkg}i)
  end

  depends_on macos: ">= :sierra"

  pkg "Enpass.pkg"

  uninstall pkgutil: "in.sinew.Enpass-Desktop.App"

  zap trash: [
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/in.sinew.Enpass-Desktop",
    "~/Library/Caches/in.sinew.Enpass-Desktop",
    "~/Library/Preferences/in.sinew.Enpass-Desktop.plist",
    "~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState",
  ]
end
