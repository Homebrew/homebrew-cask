cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "140.0.7339.80"
  sha256 arm:   "7818dedbf6c5cc23439b8e60a4e4cedeff1fd5d80c53bddd7c67b8c9192c5f7e",
         intel: "775fd9c3d1e25c547d37c9c743f72039c7b8262e306f87708b27f0023d98d981"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
