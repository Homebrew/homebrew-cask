cask "incy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.8"
  sha256 arm:   "6679fa578a96805931c5e581ef0dc656da52df9873c4b8c7e3f3bc282164796c",
         intel: "7ddfc1715cdee5a577c495b8d7d9ce1e54cbc4e5f13f7363aca47319b92c5efd"

  url "https://github.com/INCY-DEV/incy-platforms/releases/download/desktop-v#{version}/incy-macos-#{arch}.dmg"
  name "INCY"
  desc "Proxy client"
  homepage "https://incy.cc/"

  depends_on macos: :monterey

  app "incy.app"

  uninstall quit:   "llc.itdev.incy",
            delete: [
              "/etc/sudoers.d/incy",
              "/usr/local/bin/incy-helper",
            ]

  zap trash: [
    "~/Library/Application Support/incy",
    "~/Library/Caches/incy",
    "~/Library/Preferences/llc.itdev.incy.plist",
  ]
end
