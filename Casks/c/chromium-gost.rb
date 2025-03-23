cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "134.0.6998.166"
  sha256 arm:   "0a774d530a5940aef34086ec69e368e2183a6ddd7e93e3be35f78d74f00627fe",
         intel: "34746f26371641eac8d74288754e858d77937d794e999e5dc10554f25b864be3"

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
