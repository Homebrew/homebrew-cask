cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "131.0.6778.69"
  sha256 arm:   "9dd20cbe7a843a79675059d97eeb11fb16f788e6625ecb8b837d7a9162a392a8",
         intel: "50abc1cb39823d5e3a6686de2402d58a0dbdb7a375b165e9b36e2fcd930b050f"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  depends_on macos: ">= :catalina"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
