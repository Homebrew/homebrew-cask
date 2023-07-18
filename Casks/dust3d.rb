cask "dust3d" do
  version "1.0.0-rc.8"
  sha256 "9989b1cc1349ed1eebba5bc0b7bc857c4abd6548f733130bfa6dee9453d03fec"

  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg",
      verified: "github.com/huxingyi/dust3d/"
  name "Dust3D"
  desc "Open-source 3D modeling software"
  homepage "https://dust3d.org/"

  # TODO: Update this regex to only match stable versions once 1.0.0 stabilizes:
  # regex(/^v?(\d+(?:\.\d+)+)$/i)
  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+(?:-rc\.?\d*)?)$/i)
  end

  app "dust3d-#{version}.app"

  zap trash: "~/Library/Saved Application State/com.yourcompany.dust3d.savedState"
end
