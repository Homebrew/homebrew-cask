cask "spatial" do
  version "0.4.2"
  sha256 "ba4b00e83983898dda7bd517ab481598267b25d4fbbe700f00d16c709a05ca21"

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
