cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "119.0.6045.159"
  sha256 arm:   "3cfdca430f1247865b054bac36ee5bc07d1440c07ba5d9eaad41211b98cd3e67",
         intel: "919c55210292866d4d2e152884c754b189932d33bf680c3fc0f95cd9690501e0"

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
