cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "135.0.7049.115"
  sha256 arm:   "35eb7901008e6ab7d91e8f0dfa58ee6803b1d0656082e7c71355be6dac5a4fc5",
         intel: "5c0fd0c48252649433e75aeea0b7e70aa7e1e0a3f6ba4479e632ceb0c6ec96d1"

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
