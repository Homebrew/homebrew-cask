cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "132.0.6834.160"
  sha256 arm:   "54492dccce419cbf54af8085824b170c663fdc2d8dfcd5f642ed2575c1bd7820",
         intel: "438f7a01a3f2bef6c382f079c9409b0f8b15559f1cb35fe54f2664341a5f6a1d"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  depends_on macos: ">= :big_sur"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
