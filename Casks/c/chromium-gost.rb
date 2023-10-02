cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "117.0.5938.132"
  sha256 arm:   "da66c9d0167f59f01690fe86f97dcf4681a5d95da35ef7a7b60e94f703cff6c7",
         intel: "4a7f2a4ee3f687f0735ed00ced3cc501d4b88ab962ccf0d065a69d5def970bff"

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
