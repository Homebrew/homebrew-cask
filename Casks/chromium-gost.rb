cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "113.0.5672.126"
  sha256 arm:   "ea7caa601deae9e5998aa69fb27ce4125575197127504f031abd6e4ad91276b2",
         intel: "4566ac26a824746f9d7808f6fa824fa886cd14d561351bcbf7133434f11d06e2"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
