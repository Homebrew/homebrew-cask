cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "116.0.5845.140"
  sha256 arm:   "a992fc11d222efe9b76ed14c05b65e81eecda19c1153adc75669cbc96f048a5c",
         intel: "a1e865a599c0820bc66d8a0ddf29f52103536e8456cad23dabc7595205b145c0"

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
