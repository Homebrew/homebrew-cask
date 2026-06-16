cask "gopher64" do
  version "1.1.28"
  sha256 "c0b0b3021a68457d1ac99cafc9b958db583885d1e4b8844edaf82048a83279e8"

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
