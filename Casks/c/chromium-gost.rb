cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "120.0.6099.109"
  sha256 arm:   "50847521842139718f046ae20207baf4e918fe9add666d7efa0aea19a634365f",
         intel: "b28218786a2f6415e556f208ac95c9a67276cba402af05335132793e85ccf347"

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
