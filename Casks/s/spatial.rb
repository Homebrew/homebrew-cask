cask "spatial" do
  version "0.6.2"
  sha256 "50b4c64e6c58e62e1d1e67ab03ac71cee6db88e1d081e6e159e9387d82655eb8"

  url "https://www.mikeswanson.com/spatial/releases/spatial_#{version}.zip"
  name "Spatial"
  desc "Tool for working with MV-HEVC/spatial videos"
  homepage "https://blog.mikeswanson.com/spatial"

  livecheck do
    url "https://www.mikeswanson.com/spatial/releases/"
    regex(/href=.*?spatial[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  binary "spatial_#{version}/spatial"

  # No zap stanza required
end
