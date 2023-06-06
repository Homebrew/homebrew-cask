cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "114.0.5735.110"
  sha256 arm:   "5f7c13791ae2cc3433bdb0b260a4723b8926a1de47cb7984b747a7b923350929",
         intel: "3653ceb06b8742f36b5e9ef6d7b39ac5c2281fd6379b600fc9cad3668086596e"

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
