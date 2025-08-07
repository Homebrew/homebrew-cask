cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "139.0.7258.66"
  sha256 arm:   "0b4fefad6699fc6f8d02d11eb1a6fd4b38bb887f20b4d0b99b83aabd41d39933",
         intel: "5207e13f5a78fa0a5800731335c8bca7d1e2614090555c42f3cd0da649d5a9e9"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  disable! date: "2026-09-01", because: :unsigned

  depends_on macos: ">= :big_sur"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
