cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "143.0.7499.193"
  sha256 arm:   "1f2157d35fe4dd24791a942045ef994ac3f42733698b6edee70bc4abe8a5932a",
         intel: "c1576d4a2b16ae246e0e609dbfbb76c44d81adeb10e334e25be2c38451eca2ec"

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
