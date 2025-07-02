cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "138.0.7204.96"
  sha256 arm:   "702d80de9877013bf8d955a3a1a93aae349ff7923c629297e9ad7b6b93c10d23",
         intel: "929d7e12233d8b227a105f26c265e505941793d2f43c0d335b5273386ed17266"

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
