cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "119.0.6045.199"
  sha256 arm:   "1a9a8438f429172ae9d43bcaf974c58baebe0c347ec611ebc4dd7a25bd4e93e4",
         intel: "7a2ce237cc6ad3980b8a55c677b384ba54d04d22633cfd123cca792b6d37048a"

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
