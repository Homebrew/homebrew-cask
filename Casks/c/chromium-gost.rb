cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "136.0.7103.92"
  sha256 arm:   "63fdf67dfb8630a73547aa52e704b8f5b4b9a8ef0fc3209ef8f0c48e6e892f66",
         intel: "957065bc7877d5e4389e577eccd29ae0e69efea9b5494f18746d4fbe0da9229c"

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
