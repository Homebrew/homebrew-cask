cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "142.0.7444.60"
  sha256 arm:   "059de8005b1ed25254cdea999cd730edb35f0413d11f0fe7512b483e3717e3de",
         intel: "2236a2b135a0a1b219752d6a4cffc889a37ec76559684089b74e0c212efecd9b"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
