cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "140.0.7339.208"
  sha256 arm:   "45bbd1927cb90fa6c358c2ed735723d221febfd74a93baac7b935024bd9aab96",
         intel: "f461d26eed740352777a2be26d4558440326cc1c4b58bb1f38239a78dfa54e9f"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
