cask "spatial" do
  version "0.5.0"
  sha256 "cf7aa4d05e033d6bfc306906d91b40310519ed760638abda04226b2fef24d08d"

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
