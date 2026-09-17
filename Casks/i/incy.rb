cask "incy" do
  arch arm: "arm64", intel: "intel"

  version "3.8.6"
  sha256 arm:   "d1ed68563e97123ac11d4a166a4276c91a7e8f21ba741bca11ab7f4d6df034f0",
         intel: "25d18c7ac3514e176b4c638f409277f5b6665e9d3084db78612e882c324ea432"

  url "https://github.com/INCY-DEV/incy-platforms/releases/download/desktop-v#{version}/incy-macos-#{arch}.dmg"
  name "INCY"
  desc "Proxy client"
  homepage "https://incy.cc/"

  livecheck do
    url :url
    regex(/^desktop-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

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
