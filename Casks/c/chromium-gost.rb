cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "131.0.6778.264"
  sha256 arm:   "472967c950a5f90b7e32b2948f0aaa0ca0e13db459c852d63173331854729baa",
         intel: "12a6ab54cd659b90ebd4391afba84180aa36391ec5ed2f66e7a129b89387140e"

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
