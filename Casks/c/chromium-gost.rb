cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "128.0.6613.84"
  sha256 arm:   "61c26bb9b9e255612db38b11ca7e68b67700b29650de31d44e042418b2b6510f",
         intel: "3e3b5c5ef59d14d933e436c64fb759373771d84bdbe17e1c852c75dcaea497ad"

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
