cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "117.0.5938.62"
  sha256 arm:   "72a5aae3dee8399d1f77770c251254510b5e02b5cabf53519374881e1e3b5fd2",
         intel: "6840fdeeea479113197a7dcdd47e6b5594679c956b1b0cb4b52b6e52fe677578"

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
