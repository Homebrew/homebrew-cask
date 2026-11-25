cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "150.0.7871.224"
  sha256 arm:   "9bc80d7ecd9caf43459d89d4c4880f95aae333b4a73ab6e886b59018cae1e2e7",
         intel: "e4dbe5b029c0c688c5c077e5818a9e2ad00caad76feb697f6c8f9d3b016f709a"

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
    "~/Library/Preferences/ru.cryptopro.chromium-gost.plist",
  ]
end
