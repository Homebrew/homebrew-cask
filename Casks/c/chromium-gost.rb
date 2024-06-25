cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "126.0.6478.126"
  sha256 arm:   "eeedde07499a4caa9a591379ee0e005c6e0c14aa28919b1afa2bdf2f30ee1376",
         intel: "062e01c9331c2bd21a3285ea22d09a05118b1687ec394bc487fee06e5a843027"

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
