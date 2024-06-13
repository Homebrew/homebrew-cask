cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "126.0.6478.56"
  sha256 arm:   "b69aac89face37279efd99573fa712b013b49d17448480e891011eef43b1b235",
         intel: "352811bc6d1a49e10532a8843f9743726a04c1d18696ff8ab4b31f0ee1e696d0"

  url "https://github.com/deemru/Chromium-Gost/releases/download/#{version}/chromium-gost-#{version}-macos-#{arch}.tar.bz2"
  name "Chromium-Gost"
  desc "Browser based on Chromium with support for GOST cryptographic algorithms"
  homepage "https://github.com/deemru/Chromium-Gost"

  depends_on macos: ">= :catalina"

  app "Chromium-Gost.app"

  zap trash: [
    "~/Library/Application Support/Chromium",
    "~/Library/Caches/Chromium",
  ]
end
