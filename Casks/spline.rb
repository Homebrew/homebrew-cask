cask "spline" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "af5c6f89cc77f4696157e7f768377b7955ce3979db305b381bb67151eeedf7e4",
         intel: "ff1a2bc86ef2f0ebbe11c801c2b080eb664fc38abcf7d2f080350fafc8801ab1"

  url "https://cdn.spline.design/_assets/Spline-#{version}-#{arch}.osx_update.zip"
  name "Spline"
  desc "Design and collaborate in 3D"
  homepage "https://spline.design/"

  livecheck do
    url "https://spline.design/#download"
    regex(/Spline[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[._-]osx[._-]update\.zip/i)
  end

  app "Spline.app"

  zap trash: "~/Library/Preferences/com.design.spline.plist"
end
