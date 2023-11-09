cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "119.0.6045.123"
  sha256 arm:   "28626794cf92101c3549a1a7eeed3bbf164edf9154e9973eeeaa98a348e1aabb",
         intel: "666954cd3740d89edc8daaed74fe72101ba44412ced6f2af14dbd7bda42efdf0"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  depends_on macos: ">= :catalina"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
