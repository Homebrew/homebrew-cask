cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "143.0.7499.169"
  sha256 arm:   "056bc070ed97e7d61ddf48c9acb3c5ab25c00a1db336efd9f6d89d3ac25bbad8",
         intel: "40833942c00600974d6f7777b0f853af06efcda8c8f85d08b46e58fe2417af26"

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
