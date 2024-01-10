cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "120.0.6099.216"
  sha256 arm:   "881c2e5735c6f52c9ec81f624d193a2619aeafbb3cdbe7778fb9420393261ff7",
         intel: "0247d6fb9048e2b718510a0f2db232973f22e054c4d2eceb6cf46f4a62e17361"

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
