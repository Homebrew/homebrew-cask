cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "128.0.6613.113"
  sha256 arm:   "0b5b46904580a2f5e1b1f71431f2b688a4bfc88ac99012e5340a38553c7c0936",
         intel: "5eb781e6efaf2b456adc9e39a4f76bc6f32b638014ea5e2e50f4b9be5629f799"

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
