cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "124.0.6367.78"
  sha256 arm:   "e1e8aae18842f16e4f21ad659f7e7bffb39cc5563143342504083e368f04a8c0",
         intel: "39e7978d79273abd3e04c37b1f5a85caaa5c7ce873f4e2f50571115590816392"

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
