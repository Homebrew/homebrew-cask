cask "incy" do
  arch arm: "arm64", intel: "intel"

  version "3.9.0"
  sha256 arm:   "7114e9dba560cc518220ca1eba5945b32f1334ba756745041d10a11ebd0049b5",
         intel: "403fb5e9788c10eb6e7b0bc7914d3e5c65a3bf1df67f31a2fab380ff8939ab97"

  url "https://github.com/INCY-DEV/incy-platforms/releases/download/desktop-v#{version}/incy-macos-#{arch}.dmg"
  name "INCY"
  desc "Proxy client"
  homepage "https://incy.cc/"

  livecheck do
    url :url
    regex(/Desktop\s+\*\*(\d+(:?\.\d+)+)\*\*/)
    strategy :github_latest do |json, regex|
      matches = json["body"].match(regex)

      matches[1]
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
