cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "129.0.6668.58"
  sha256 arm:   "78749d1ad256dfa6356a3878b450ff898d983ec6467ac8c038a8b6e1d6039611",
         intel: "101d3b7bd63b80d85ac311a6f9e84ba8fc104d2b99c52a6ac9400890dc90e14a"

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
