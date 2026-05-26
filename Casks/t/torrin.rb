# Reference cask for Homebrew/homebrew-cask PR.
# Update version and sha256 when cutting a new macOS release.
cask "torrin" do
  version "0.2.0"
  sha256 "739daa30e530e2c3d6603bd1dd049e63de43be58ac8d9a340d64d34a9274c357"

  url "https://github.com/dineshkn-dev/torrin/releases/download/v#{version}/Torrin-#{version}-macos-arm64.dmg",
      verified: "github.com/dineshkn-dev/torrin/"
  name "Torrin"
  desc "Open-source BitTorrent client without ads or bundled telemetry"
  homepage "https://dineshkn-dev.github.io/torrin/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "torrin.app"
end
