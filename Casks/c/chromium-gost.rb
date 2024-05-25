cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "125.0.6422.112"
  sha256 arm:   "7e89214d79cc3d5778fb3542f4e042fd4e000e7ff62d4663dbc47d7d31a71764",
         intel: "2d4b26ebaaac6f3c13ca13218a68df117cc875a02d49e455f2f27153a447eec7"

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
