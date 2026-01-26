cask "spline" do
  arch arm: "arm64", intel: "x64"

  version "0.12.11"
  sha256 arm:   "e07ca72432a1c53366e2fbe4a06566ebd3f314454a86e4fa1edc6e854974a87a",
         intel: "9417fa964681c5b74ea7d05d21e5f27e19b455f6d986a04d02c944bb170bd942"

  url "https://cdn.spline.design/_assets/Spline-#{version}-#{arch}.mac.zip"
  name "Spline"
  desc "Design and collaborate in 3D"
  homepage "https://spline.design/"

  livecheck do
    url "https://s3.amazonaws.com/updater.spline.design/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Spline.app"

  zap trash: "~/Library/Preferences/com.design.spline.plist"
end
