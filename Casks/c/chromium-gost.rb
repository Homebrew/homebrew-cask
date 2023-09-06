cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "116.0.5845.180"
  sha256 arm:   "efc0e6103c6352aaadd64fc34fe5fa4387b964e604d5c3b47376a5dc18336a5a",
         intel: "9e0e8684a54fda24c11383e8c5d3017d022987a25a78bedadb1ebe9751626731"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
