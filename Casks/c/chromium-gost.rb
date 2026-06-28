cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "148.0.7778.280"
  sha256 arm:   "4e49447b0405685643b1939a662f9857fe66577971ea0e76a1de972d2fe01115",
         intel: "432d0a567e05910c2f452c8da053d19eb87aef53b82a60e9e15d7e2e2d478e8b"

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
