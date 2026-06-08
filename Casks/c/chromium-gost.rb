cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "148.0.7778.216"
  sha256 arm:   "9d46eccb7904ca1d74f210c918d0f19b3efe0131e8058364909eab056ccf77d7",
         intel: "a12a5862896891ce856dc640b691678641c8c0e12d70bdc147651d3d7f81de3c"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
