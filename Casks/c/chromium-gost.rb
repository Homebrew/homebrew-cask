cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "150.0.7871.212"
  sha256 arm:   "72553d2f4909b9fe32b5c6a17de4ef2e20c97dc647d4732c9a38e51197723f55",
         intel: "92aa7779e47f0a0844266aeae92d95813f37627c58c7780806a8cf19b1b554df"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
    "~/Library/Preferences/ru.cryptopro.chromium-gost.plist",
  ]
end
