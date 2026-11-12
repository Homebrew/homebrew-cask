cask "incy" do
  arch arm: "arm64", intel: "intel"

  version "3.9.0"
  sha256 arm:   "c3b22d6d76935504f868c528efbd6952405ad29f99a5eb4375e276544521b922",
         intel: "c41e2dfcef7e0f62acfb47777b942ad4869f9bf72389965f23a815539008f065"

  url "https://github.com/INCY-DEV/incy-platforms/releases/download/desktop-v#{version}/incy-macos-#{arch}.dmg"
  name "INCY"
  desc "Proxy client"
  homepage "https://incy.cc/"

  livecheck do
    url :url
    regex(/Desktop\s+\**v?(\d+(:?\.\d+)+)\**/)
    strategy :github_latest do |json, regex|
      json["body"]&.[](regex, 1)
    end
  end

  depends_on macos: :ventura

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
