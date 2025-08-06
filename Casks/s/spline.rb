cask "spline" do
  arch arm: "arm64", intel: "x64"

  version "0.12.5"
  sha256 arm:   "85ebe3f7f7255fd0c5451ea453aade703cbe55b41efa096c55062175cb50c57f",
         intel: "bbf43f7b34bff38396e1144a662329edf69713798ed890d151b49d3618623a35"

  url "https://cdn.spline.design/_assets/Spline-#{version}-#{arch}.mac.zip"
  name "Spline"
  desc "Design and collaborate in 3D"
  homepage "https://spline.design/"

  livecheck do
    url :homepage
    regex(/Spline[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[._-]mac\.zip/i)
  end

  depends_on macos: ">= :catalina"

  app "Spline.app"

  zap trash: "~/Library/Preferences/com.design.spline.plist"
end
