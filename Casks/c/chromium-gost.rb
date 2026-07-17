cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "150.0.7871.124"
  sha256 arm:   "29bc91bd0aa19bdfb24eb3cee0e90ef8105c7fdf9174d894e0a6067e3a37413c",
         intel: "a499e95839ee7224645d0e653e77ad8d01829a6f2a541e1910421247882f477d"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
