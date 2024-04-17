cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "124.0.6367.60"
  sha256 arm:   "1853c5d4f24424f9bb975e3b50b8cc9b161013132458c9c1f16e80e02cf399d9",
         intel: "7b75b895b4c8733a03c6fcab821324787c773688c4a6e046830881fb70cc5e9e"

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
