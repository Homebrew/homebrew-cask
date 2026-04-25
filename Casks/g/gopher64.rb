cask "gopher64" do
  version "1.1.19"
  sha256 "631de3eea53e0b5c3e6dd1a4cd12d04f0759beb10bcb50b91b92c61e8091769b"

  url "https://github.com/gopher64/gopher64/releases/download/v#{version}/gopher64-macos-aarch64.zip"
  name "Gopher64"
  desc "N64 emulator"
  homepage "https://github.com/gopher64/gopher64"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Gopher64.app"

  zap trash: "~/Library/Containers/io.github.gopher64.gopher64"
end
