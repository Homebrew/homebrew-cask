cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "125.0.6422.60"
  sha256 arm:   "580452adfe31a4bf3f0168204a57799018d8bf2a91eba4a9c6082402bb07b552",
         intel: "8913a3ab6f98b059c460f962c108bef70a6d7a9225f63e6db5ada005c2b686d5"

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
