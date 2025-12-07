cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "143.0.7499.40"
  sha256 arm:   "9fd428d759839b3166b200c8fb87f74bf433c9549b95b861917b46e269f57010",
         intel: "73864b7d5191ce46de10357be1b89b6494790a0c17f5073b3ab9b94ca6650ef7"

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
