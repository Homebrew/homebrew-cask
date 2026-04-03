cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "146.0.7680.177"
  sha256 arm:   "336867f25dc5e3eadfa4a532e3d028106c7485d774af2f3eebd4f8e296971432",
         intel: "86fae4e3d7fa261b4b5f05591e156f4d6f50aedd4e3ed59d8cafcedd2321d3f9"

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
