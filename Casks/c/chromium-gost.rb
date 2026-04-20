cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "146.0.7680.205"
  sha256 arm:   "69dd77695cc88d3efc95e564444b0a4b199a6cdf48c4da367e5598cb73eb53ec",
         intel: "1821514c4efc2e5fd5311ea3c5f6329e0b736eb2e2592a30a0939dfae9a18239"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
