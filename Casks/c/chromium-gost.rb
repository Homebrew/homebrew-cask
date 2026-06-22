cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "148.0.7778.265"
  sha256 arm:   "094b32e34d3b9beea00e7dd512358f43270575e95fde7b1f3772b16c094e3a8c",
         intel: "6e2dd19169d2860572a6de253346fbcba24f3555952cabe33e98393dbaa5d977"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
