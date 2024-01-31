cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "121.0.6167.139"
  sha256 arm:   "6c98ab86e29580a4aa77d47965adfdf255ce28b4647877b655ba070e394d29ce",
         intel: "ab7e110825e2cf913d6081d0b09e57a745a829d3e9eeaa6f21324391f4a831cb"

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
