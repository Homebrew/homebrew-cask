cask "colmap" do
  version "3.7"
  sha256 "1b50bd3a5ad79d2ec5a3cf06ffbd12198f365216bb473e5e31a74c31a4b6b70c"

  url "https://github.com/colmap/colmap/releases/download/#{version}/COLMAP-#{version}-mac-no-cuda.zip",
      verified: "github.com/colmap/colmap/"
  name "COLMAP"
  desc "Open-source photogrammetry pipeline"
  homepage "https://colmap.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with formula: "colmap"
  # https://github.com/colmap/colmap/issues/935
  depends_on formula: "suite-sparse"
  # Firstly because "macOS on ARM requires applications to be signed" and 3.7 is not.
  # Secondly, COLMAP 3.7 looks for suite-sparse in /opt/homebrew,
  # which is not where Homebrew installs things on M1 Macs.
  depends_on arch: :x86_64

  app "COLMAP.app"
  binary "#{appdir}/COLMAP.app/Contents/MacOS/colmap"
end
