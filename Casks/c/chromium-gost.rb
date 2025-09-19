cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "140.0.7339.185"
  sha256 arm:   "6971794b5e91e12fe2b9e78be688b7995087aab36a1e2ee15d23b22b97eecf56",
         intel: "067668e9082ac19995e0dbd76e0fa3937653a9ca35689f9644ceeeba89a73f82"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
