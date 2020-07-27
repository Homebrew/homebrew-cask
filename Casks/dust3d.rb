cask "dust3d" do
  version "1.0.0-rc.6"
  sha256 "bc2714e22a9c1ad712a9dc8fca806b50d1f47142da7e02e5a74ff95c402959aa"

  # github.com/huxingyi/dust3d/ was verified as official when first introduced to the cask
  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg"
  appcast "https://github.com/huxingyi/dust3d/releases.atom"
  name "Dust3D"
  homepage "https://dust3d.org/"

  app "dust3d-#{version}.app"
end
