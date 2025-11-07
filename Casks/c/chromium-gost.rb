cask "chromium-gost" do
  arch arm: "arm64", intel: "amd64"

  version "142.0.7444.135"
  sha256 arm:   "3289730f6b2c4b10bafaeeeef35845926f1c6104abc96126685a4a98fd052cae",
         intel: "fce222e316b2072339e37546f686fd861de1a519d70b5a51c94d9c0001a61d44"

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
