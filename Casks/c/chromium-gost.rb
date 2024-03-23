cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "123.0.6312.58"
  sha256 arm:   "9550da020e1553d4d31cb7797abe84f54b08d1a1878b921f7f027f9f80d0afe4",
         intel: "d67e381c485df01cb58205854d4b7d6e21b23de513ecded64762da4cc361eb57"

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
