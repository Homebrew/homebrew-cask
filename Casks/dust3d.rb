cask "dust3d" do
  version "1.0.0-rc.7"
  sha256 "18245da976677629331bbdf47efe6b56dd95c9cb789c3f70c1c657156d5db982"

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
