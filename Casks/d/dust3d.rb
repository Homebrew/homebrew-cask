cask "dust3d" do
  version "1.0.0-rc.9"
  sha256 "9d2a251f26bcdcbe671677d48743f0c617be63c78f5c9291bd5b45e0dbb49a7f"

  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg",
      verified: "github.com/huxingyi/dust3d/"
  name "Dust3D"
  desc "Open-source 3D modelling software"
  homepage "https://dust3d.org/"

  # TODO: Update this regex to only match stable versions once 1.0.0 stabilizes:
  # regex(/^v?(\d+(?:\.\d+)+)$/i)
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-rc\.?\d*)?)$/i)
  end

  depends_on macos: ">= :high_sierra"

  app "dust3d-#{version}.app"

  zap trash: "~/Library/Saved Application State/com.yourcompany.dust3d.savedState"

  caveats do
    requires_rosetta
  end
end
