cask "spline-m1" do
  version "0.9.0"
  sha256 :no_check

  url "https://cdn.spline.design/_assets/Spline-#{version}-arm64.osx_update.zip"
  name "spline-m1"
  desc "Place to design and collaborate in 3D"
  homepage "https://spline.design/"

  depends_on arch: :arm64

  app "Spline.app"
end
