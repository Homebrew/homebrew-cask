cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "130.0.6723.92"
  sha256 arm:   "766132e5da7013e316a09fc3afd86988121175d5559b21aefd1093ead5b930e3",
         intel: "6e9b01d7dbf91ae4014aae9e55fc4047d8f08eb544675d4dc97bcbbf39159a52"

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
