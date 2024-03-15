cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "122.0.6261.128"
  sha256 arm:   "7a0c5ae0e0b523b1bd234e7aea33f5c268865191a8f97b086bb67501ccd7bcff",
         intel: "22344d82b6a4c0481af4bc94f421022d869ea54039dae0dad423a06301e1a554"

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
