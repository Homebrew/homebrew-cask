cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "123.0.6312.86"
  sha256 arm:   "71158133f30c5152be2e75d48d9b22c78f3d9201e4832010f5e2e12e19134893",
         intel: "d34446a176de2dea02494b1ad36f4dc557f80a965a18dda7057d2e21ef089f36"

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
