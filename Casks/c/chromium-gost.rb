cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "127.0.6533.99"
  sha256 arm:   "6eb11785c6b09caddc010ec6484218027df253118bf5f0c45b0a1411db40d43d",
         intel: "25a62bed39a7826d177c408b1c9adf854b561f1d715a55124ef131974d74ef72"

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
