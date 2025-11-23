cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "142.0.7444.176"
  sha256 arm:   "b1310b3348c30abddae3107ab9fe0b86d7072ee1364e8b252864a2cd163eac45",
         intel: "afafbb92a29257a854c114c8ccc4e9c21f77ec210a795254062b2679181a435f"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
