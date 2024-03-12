cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "122.0.6261.112"
  sha256 arm:   "e7b418760a2f6eba6418759e16e7ddb0d92abfe5012c3252cc8fe8c174aa34f3",
         intel: "fedd42d75e409f024830dbdbb9f23999ce600d755a356d0175204901b2fec11f"

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
