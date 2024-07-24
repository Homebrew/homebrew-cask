cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "126.0.6478.182"
  sha256 arm:   "841fa9bf8ee40a3aa0cb619d3dd755091c160e08fd48526addf6b35a7129de80",
         intel: "f6cab822ae3d9e68b322f9ad611a6726f3ac48effe371ed84c0a1202440521a8"

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
