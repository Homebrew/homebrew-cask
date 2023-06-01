cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "114.0.5735.90"
  sha256 arm:   "bfb5afdae3a75f42c27c2ec183cbb4a055f8d0f67a38dd6de2b946e8a2339671",
         intel: "05391f2af7db3110ef0e2c64d3d0774b6c80ae6dc1fcdf6c55f2fdc5e94c1206"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
