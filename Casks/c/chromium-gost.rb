cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "132.0.6834.83"
  sha256 arm:   "e84888b9e9c12db667af8fab55d4329fe48afe7b01e55c0d50cdadb4269c39f0",
         intel: "311c575d08660d87d9baad7f0fee4aeadc53b93c6a12cedd34aeaea0d5105252"

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
