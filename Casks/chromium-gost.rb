cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "114.0.5735.198"
  sha256 arm:   "a0866fa9150970accf00d8264e7fd4455a939ca4c016b7c4d083a79a8dfb5393",
         intel: "5dd1d15407f1f50908675dec7473a829796b175474ed5a18b874f1954bf26f59"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
