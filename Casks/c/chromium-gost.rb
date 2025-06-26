cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "138.0.7204.50"
  sha256 arm:   "8bd9702132d092cfdc9599f2f109bdbeeeb20f3f62ff3366ed764744f8093df5",
         intel: "5cddefadcd2b21d6b6011516798c2ba139a6b6ce4ed6fe050e078085f0258ba3"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  depends_on macos: ">= :big_sur"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
