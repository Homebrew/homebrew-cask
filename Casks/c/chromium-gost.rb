cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "143.0.7499.109"
  sha256 arm:   "4311f8f081b6c650473c49e7cf6228e628b60c22c252c2a6df6261892e7cde85",
         intel: "0a92ca850a75c6fd4f549db27f9db0b2cb0eec26eebc3288654927cea0a93db9"

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
