cask "gopher64" do
  version "1.1.20"
  sha256 "19929a3a91e9d2421360f2505c2feab60d9e30652d01ac8cb0854d062381d791"

  url "https://github.com/gopher64/gopher64/releases/download/v#{version}/gopher64-macos-aarch64.zip"
  name "Gopher64"
  desc "N64 emulator"
  homepage "https://github.com/gopher64/gopher64"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "Gopher64.app"

  zap trash: "~/Library/Containers/io.github.gopher64.gopher64"
end
