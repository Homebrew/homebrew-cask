cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "118.0.5993.70"
  sha256 arm:   "e76321ef654aec79c8ebbcb30abbc3121bf1f92946e9eaad1e754506e94b3c2d",
         intel: "616c5ec917686147b68e6908037784d1672bee0253762fc9453b281d78d14aef"

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
