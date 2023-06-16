cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "114.0.5735.133"
  sha256 arm:   "e99c67b9d1bebfb3e7373177a11325f463bcbb12ecf3825765281e0885af9f1d",
         intel: "2517b95cb29aadbe09dd8a395ff6783f1d69922493973a2e203d99e8d66ba284"

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
