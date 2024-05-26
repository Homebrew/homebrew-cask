cask "spatial" do
  version "0.6.0"
  sha256 "84cd3b031e21a0c95f3af66894fb98e6e76d8975f65391c70171dff101a902b5"

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
