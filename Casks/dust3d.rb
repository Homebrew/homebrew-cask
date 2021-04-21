cask "dust3d" do
  version "1.0.0-rc.6"
  sha256 "bc2714e22a9c1ad712a9dc8fca806b50d1f47142da7e02e5a74ff95c402959aa"

  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg",
      verified: "github.com/huxingyi/dust3d/"
  name "Dust3D"
  homepage "https://dust3d.org/"

  livecheck do
    url :url
    strategy :git
    regex(/^(\d+(?:\.\d+)*(?:-rc\.\d+)?)$/i)
  end

  app "dust3d-#{version}.app"
end
