cask "incy" do
  arch arm: "arm64", intel: "intel"

  version "3.9.0"
  sha256 arm:   "3c6ee88fac520fe06c81a7e856be130a6dfe738bc343ceffc08da12a9ed03aab",
         intel: "5f60957766bb63ac359b7569f1b6a58089f8d790331e65c5cff1cc71ae7d77a4"

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
