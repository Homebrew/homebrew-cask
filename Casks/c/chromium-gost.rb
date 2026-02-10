cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "144.0.7559.132"
  sha256 arm:   "81c784751f7ac2eadfc3dfdc83f0d19497294ad36a15dcf1c15fb47fe20cb360",
         intel: "283d4f2dd7d87256dff2da0405e0ec5da2f120a745e46ebf64dc19545299efb4"

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
