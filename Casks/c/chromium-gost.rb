cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "117.0.5938.92"
  sha256 arm:   "8480c7d9a37db11901a2cf7673af285877711b2d0cc72715b1485336b54d5de3",
         intel: "b221e6d846269817ec10adc71b1df713e331f3830b59bbd7d5625137a2261adf"

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
