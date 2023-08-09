cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "115.0.5790.170"
  sha256 arm:   "b20b6c896ee85d78e195317dbe908a9cdbea4f6dc6480400c010c35824b769c8",
         intel: "3096850cabce2e0b3e96e280b6a8258e3348d2c54576b485dede51cf1cc9182e"

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
