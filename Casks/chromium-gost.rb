cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "115.0.5790.114"
  sha256 arm:   "cf037d4bc5419015f06bb89a3d79d80d25e8ac5dfdc84ebf1b43d54aad5eb13b",
         intel: "effaaac2b975884df8606118827dc40e1a5887e2671848832e549a32162b3f73"

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
