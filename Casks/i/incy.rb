cask "incy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.10"
  sha256 arm:   "835a900cb3bc0dcf5c9174d9862e847311a89ffd625f8ec8e7aeb0636c69dd08",
         intel: "b7e8c722e3fde574f0627f48583336762520ecd4ac80a52348e8f5f34b0b53c2"

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
