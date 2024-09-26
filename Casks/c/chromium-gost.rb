cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "129.0.6668.70"
  sha256 arm:   "35935d9ce1d222d9ca45ed37986238b26480a4968724c52f284cb810637e6578",
         intel: "a6262580710472010c25bf8f3d980ab325c04043bbff7c8b9cf0de89fc061945"

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
