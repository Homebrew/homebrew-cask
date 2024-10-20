cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "130.0.6723.58"
  sha256 arm:   "19d1b0535f25d37a7111d2c3864660cec1f3b9f457a648510f145e6a782cd88d",
         intel: "50253ce41796c0e96838ace98d5062e4dc7cf229a3088e0c5b5cb2764f73af8f"

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
