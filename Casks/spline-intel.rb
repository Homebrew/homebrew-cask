cask "spline-intel" do
  version "0.9.0"
  sha256 :no_check

  url "https://cdn.spline.design/_assets/Spline-#{version}-x64.osx_update.zip"
  name "spline-intel"
  desc "Place to design and collaborate in 3D"
  homepage "https://spline.design/"

  depends_on arch: :intel

  app "Spline.app"
end
