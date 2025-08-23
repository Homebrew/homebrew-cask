cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "139.0.7258.139"
  sha256 arm:   "eb59435a0e2d4ad53acf7e14aa17a284e05fcf57ef05b65be98dd353e2eeadf9",
         intel: "f67fbd0eea57ee857e30674e19269b98400eb4145448a8ad51a50fb50c33bc43"

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
