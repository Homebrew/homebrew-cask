cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "121.0.6167.85"
  sha256 arm:   "4f4dc700d22782dd7ca718815ceee1edba290e9f053ccca247dcaa6ef1fe8245",
         intel: "b36707f18b8efe7e86f0ed5c1f6997d441edfee16906aa4e961764fb862921cf"

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
