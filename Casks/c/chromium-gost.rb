cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "135.0.7049.95"
  sha256 arm:   "4a04c2d84d8f97c4f04fa7d75af88f93503d4a521085669096eb515c40770146",
         intel: "5687e5bd5ba53622342cc86157742fa3c4c757d1b33e9fe1008a4b9367ade9d8"

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
