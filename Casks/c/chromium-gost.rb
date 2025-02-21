cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "133.0.6943.98"
  sha256 arm:   "a7815d195b8b6213371066ed75d24a0064138d6ba35f51356a33d2a3aa224557",
         intel: "52c5947cf39e94d8f2b04a813419b6c3888302c55434187ee2f97d50b3091132"

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
