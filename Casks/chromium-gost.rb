cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "115.0.5790.98"
  sha256 arm:   "732983c0e7a7cbbfd23724e7a5107d573a85104404b03b6de10721bed896bee9",
         intel: "12374a442ac65ca08f8320995e63673f6bc7364461a7636c3b76ac60814417a4"

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
