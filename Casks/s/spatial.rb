cask "spatial" do
  version "0.5.2"
  sha256 "1ad8e22a241eaf8926c090e5f819dacbe26c1400fde0244d9ac3db409c0ed131"

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
