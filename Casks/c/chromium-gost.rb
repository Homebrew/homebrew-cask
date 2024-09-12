cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "128.0.6613.137"
  sha256 arm:   "8fba74e3cc3b0f6773566714e07426718e85270b6e26f58edf0bd6a2014dedbb",
         intel: "8e9c86dd90a01977b2a43a94c8443a6f3a9563fede6deebddc50233ec19cbcc2"

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
