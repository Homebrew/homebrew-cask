cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "122.0.6261.58"
  sha256 arm:   "565ad64cc1151fda8e033e6514b5694b3882ff65d9fd92a13cf0e26221e36d6d",
         intel: "afa2601dc3318735a36a7ad070f3348a8645079ed60d420649f3f8a6235992ee"

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
