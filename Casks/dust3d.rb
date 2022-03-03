cask "dust3d" do
  version "1.0.0-rc.6"
  sha256 "bc2714e22a9c1ad712a9dc8fca806b50d1f47142da7e02e5a74ff95c402959aa"

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
end
