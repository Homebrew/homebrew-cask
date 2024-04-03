cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "123.0.6312.105"
  sha256 arm:   "edba729ef89a9958cbd3a934e9c94b135c76e84b1c96308fcd4b010990b39d7c",
         intel: "8b794448cc8a1855a3fad44c596f49ce15d34d00370180a97eed13697e5440a4"

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
