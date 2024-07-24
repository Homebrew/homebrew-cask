cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "127.0.6533.72"
  sha256 arm:   "2258ec862a603fd839707e3fa55c65f3bff8a2adf3afd59c26306b1a46fd285a",
         intel: "ac87070fe27a628ef5f53d3d9e43e08b1a668299890ba4efd4abadd0a93361d7"

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
