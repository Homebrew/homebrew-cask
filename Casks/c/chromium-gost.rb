cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "116.0.5845.187"
  sha256 arm:   "778cd298f37129296d4aedd6c97f37aa6254d0d2aeb1df904ce4668f4744d203",
         intel: "d60783c4af314d118958681faf30cfaac4449945fcd814b40113e94c1ccca400"

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
