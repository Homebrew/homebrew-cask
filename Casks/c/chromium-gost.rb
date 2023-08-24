cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "116.0.5845.110"
  sha256 arm:   "06baa68a26cc3678ca2d222165f146e7b77f2190ea07fe40c3de6c6f7d477cb0",
         intel: "826c5012c53d8bc74d6915fb37f8771dd64e0cd2a289cfcbffb01da73598e4b1"

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
