cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "118.0.5993.118"
  sha256 arm:   "e43d08fb30e12a81c777a23902696b4b55c370544b4f8439265d8a20839fbfda",
         intel: "559df7cbe06b034e0be256a3d2b725d3413705fa5be1bb0ed96335f8b66f9131"

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
