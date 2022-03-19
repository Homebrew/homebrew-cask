cask "easytether" do
  version "16"
  sha256 "9dfeab61429d4ed65ddf25727e4e0857b45d52b7ab4c2e909dd3e20bca9b17c3"

  url "http://www.mobile-stream.com/beta/darwin/easytether-yosemite-b#{version}.pkg"
  name "EasyTether"
  desc "Carrier-independent Internet connection sharing (tethering)"
  homepage "http://www.mobile-stream.com/index.html"

  livecheck do
    url "http://www.mobile-stream.com/easytether/drivers.html"
    regex(%r{href=.*?/easytether[._-]yosemite[._-]b?(\d+(?:\.\d+)*)\.pkg}i)
  end

  depends_on macos: ">= :yosemite"

  pkg "easytether-yosemite-b#{version}.pkg"

  uninstall pkgutil:   "com.mobile-stream.pkg.EasyTether",
            launchctl: "com.mobile-stream.easytether-usb"
end
