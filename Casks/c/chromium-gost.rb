cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "120.0.6099.129"
  sha256 arm:   "c6039ab800f722f68b41317b00f3534fa687d01c881b1163e1ab3c442317a40f",
         intel: "d745c45e7adf1de34b67cc353a3e6ae0bfe4106b0dd84a5e0a05112329648163"

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
