cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "144.0.7559.236"
  sha256 arm:   "d805f824703361058407421a005db438540e88e5191f24f5745497e3d404de78",
         intel: "57b7750c346524c4a8af19a3bd85746637fcc7b1e4538f38e4ef187c960caaf8"

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
