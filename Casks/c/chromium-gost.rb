cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "120.0.6099.234"
  sha256 arm:   "db7b3c84e63342ab8531ccf6d38669a44a39a84a24f21846a25ee987138bba97",
         intel: "5e5c1821cd01fac033eb9ac171e9bd4510543819b405ac5fc3cdaa4192cb72ba"

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
