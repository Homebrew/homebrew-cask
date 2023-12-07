cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "120.0.6099.62"
  sha256 arm:   "cd81df2a56365dafcbdf7b70bfc09131ff7e80280532e445c560009ae086be81",
         intel: "758f11a7a8f68d5ef779da898e749e632cab1f67163c2bd4ce57822af02b23ee"

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
