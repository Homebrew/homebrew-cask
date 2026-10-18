cask "incy" do
  arch arm: "arm64", intel: "intel"

  version "3.9.0"
  sha256 arm:   "ba7772c616d3886102e84642044015031f0e565a3815a37f18d356e396280b72",
         intel: "9a4c1e07b5f74137fe4be91760732b8a030e8400829ef1f93de2a9c4187b4f66"

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
