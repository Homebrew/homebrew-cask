cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "150.0.7871.128"
  sha256 arm:   "1c58dd5849817533d811ff4026af28a5586fb31d18906f3a1211758270e4f411",
         intel: "8615e6dd81d785c07dd3d20ab1c7763979705904440047107395bf5289978682"

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
