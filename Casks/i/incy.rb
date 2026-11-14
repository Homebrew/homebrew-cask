cask "incy" do
  arch arm: "arm64", intel: "intel"

  version "3.9.1"
  sha256 :no_check # required as upstream package is updated in-place

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
