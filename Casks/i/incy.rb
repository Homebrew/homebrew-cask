cask "incy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.8"
  sha256 arm:   "6679fa578a96805931c5e581ef0dc656da52df9873c4b8c7e3f3bc282164796c",
         intel: "18a68f334951a1de704a2990c4219ec551a90163f05e0fefd541c6f7d97375a1"

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
