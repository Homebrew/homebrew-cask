cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "134.0.6998.89"
  sha256 arm:   "e80d31141ab3ed3b927d1863a8a847832613ef761425857beb88c421088d75f2",
         intel: "0f96e5cee2a7d55b9c09469e574aecd62eeb51e4c52343a22aced16272ef5c43"

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
