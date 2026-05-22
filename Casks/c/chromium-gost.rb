cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "148.0.7778.178"
  sha256 arm:   "c61992c199f7666809bcc074fe0ae78b62a2da929c655b6f9b34e88a4fe8ade2",
         intel: "b967db9670b8a5493162fb0a22ff7edfc179335078607f2019d6059b5706f3fe"

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
