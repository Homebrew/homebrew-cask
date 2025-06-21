cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "137.0.7151.119"
  sha256 arm:   "c422da2d77589e8123ab70ed9f23fee81e19decf338cf0e876972407e7128f8a",
         intel: "c4ccc30662e6a56b7f6e3bce1793f47d945f0adcd1f716efe95a6fac0160b984"

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
