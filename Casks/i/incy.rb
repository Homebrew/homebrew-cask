cask "incy" do
  arch arm: "arm64", intel: "intel"

  version "3.9.1"
  sha256 arm:   "117566145f6d4d085c543f3ab46113dab0ea3342b3f9b0ad2e75f22a551bfda9",
         intel: "7d3291bf609ef04261d3f0fe06daae4b4d7ccd8409f021936675c8492e0423dd"

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
