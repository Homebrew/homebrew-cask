cask "gopher64" do
  version "1.1.38"
  sha256 "26a2343ec6253afc5a9c2cafc91ccfb5a5ee7472fa5fcbc0dad5086ac179428d"

  url "https://github.com/gopher64/gopher64/releases/download/v#{version}/gopher64-macos-aarch64.zip"
  name "Gopher64"
  desc "N64 emulator"
  homepage "https://github.com/gopher64/gopher64"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Gopher64.app"

  zap trash: "~/Library/Containers/io.github.gopher64.gopher64"
end
