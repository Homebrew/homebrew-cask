cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "121.0.6167.160"
  sha256 arm:   "4b01bdbdcd407056fad7036c7fa70b1d53694e6c6956246a5df627007e63a984",
         intel: "9eb257a615fcd49ed2bcb4aad96379d49a26b3cbaecfd6556803619e8855a81a"

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
