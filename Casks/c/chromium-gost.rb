cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "118.0.5993.96"
  sha256 arm:   "e836be71259c22246267e34d1983fbb4d9b7d789613711fa59786b21f844b8ff",
         intel: "93c7873c8c45d6a6a3344896ab4fe5dc8e8a87810ede735a423f6771565d83e8"

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
