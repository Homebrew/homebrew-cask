cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "144.0.7559.220"
  sha256 arm:   "f7d447348d46d1933f72b77e909e2f40c7644e9bd11de582344cce9151f430d1",
         intel: "d1786e5f26acab362c8200dcd4f834184578d6f50e0f3619f190245f6a6e5b74"

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
