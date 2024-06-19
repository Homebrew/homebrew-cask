cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "126.0.6478.114"
  sha256 arm:   "33444ec33aeb91b3ee318c10be80e7c73edcb61a96492acba16981491b6cf532",
         intel: "639227c9a1d94fc35e22df66b2b44970d90cf8b1d082ef5df90ef6608125d3e0"

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
