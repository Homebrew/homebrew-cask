cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "137.0.7151.55"
  sha256 arm:   "99897d0ba02abce9c1dbf3de635dfe72ff453111a78731b7258d5d1e8039ca5d",
         intel: "52eba33a1e9857fd00956b67ae032e3ebca567e479b6602f577b67255b6d38e0"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  depends_on macos: ">= :big_sur"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
