cask "gopher64" do
  version "1.1.24"
  sha256 "d2b60fc29f37fc250be7a9b07dfec69da4e655dc441453a88e2dcb34684f9a6b"

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
