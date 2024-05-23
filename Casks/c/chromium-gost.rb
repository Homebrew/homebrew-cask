cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "125.0.6422.77"
  sha256 arm:   "ae857c8022dfe26dd571ff77aad0f88ba6b0c10f0dc62397ad1b6985166e0dae",
         intel: "dc158a62f1b50279ca622adadbc4200e11ad4d0a1626b50a8eddb59289c7d89e"

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
