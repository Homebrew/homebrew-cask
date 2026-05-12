cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "146.0.7680.216"
  sha256 arm:   "7b490becf80a7dc871fe0cdb8ef09500b219535a9d2a60650af27259a5ad0f7e",
         intel: "c4b8fd5af1d75cc4f550d257979fa8aff18e67a40b1ca5f7f42563acfee69a4b"

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
  ]
end
