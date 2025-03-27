cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "134.0.6998.178"
  sha256 arm:   "12417bb321d5256dddf5b1ccdbe55649d3306a888e9a948b92962d104744431c",
         intel: "3991e78d529695d7df219490905219ce73a1d92dc3023da67526d896a6b03d57"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  depends_on macos: ">= :big_sur"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
