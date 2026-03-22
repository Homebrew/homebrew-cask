cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "146.0.7680.153"
  sha256 arm:   "2778f5b7dbee5c599083ae4d63b4d330324de02f593b3752d1f94a53f9fcd62b",
         intel: "a994683a8f400203371b3323a967c75fb198ae1725d2fde25184ee2993e113e7"

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
