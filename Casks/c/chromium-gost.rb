cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "131.0.6778.139"
  sha256 arm:   "6a72d75eb9e6418762bea47c44ed39bf1dc4b0fe1eedfa57f010db5c5dff9a14",
         intel: "a4da7e71bab7a454075535823d6c2e95b31a9ed430d6b173128afad389624347"

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
