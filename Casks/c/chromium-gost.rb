cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "131.0.6778.108"
  sha256 arm:   "36c7f05604115e38d1dd254fa4f18a1642838819a40b82266c0d8daa052222c6",
         intel: "eef48057205fb5908f6928a60b615c36b016f633a2223166d7367947024fc496"

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
