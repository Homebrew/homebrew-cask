cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "141.0.7390.77"
  sha256 arm:   "598279d9eb60d6cf133380439642387ecc9d646f92902bfacc07d3ca0be552e3",
         intel: "70bc44e9244304950c0dccefc7911b610bd78af8fff6815223c1ef8968e5d122"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
