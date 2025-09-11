cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "140.0.7339.132"
  sha256 arm:   "1d1ddb86f1c0dc43cbc437515c6e57362ae9a37b42c5f368201626606b997169",
         intel: "d8574d485a90b62a554d95382e2c39a01b0e06045ec08ea2091d4c426e26b406"

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
