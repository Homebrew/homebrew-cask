cask "spline" do
  arch arm: "arm64", intel: "x64"

  version "0.11.0"
  sha256 arm:   "c2a78bb2f46ed0e5ab36280df65509f90bb3ee327610b483a7b6ec5e27871834",
         intel: "316bc704267d1eca58a6e62e23981f415d3e70e121f94192c64f3de88730a2a7"

  url "https://cdn.spline.design/_assets/Spline-#{version}-#{arch}.osx_update.zip"
  name "Spline"
  desc "Design and collaborate in 3D"
  homepage "https://spline.design/"

  livecheck do
    url "https://spline.design/#download"
    regex(/Spline[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[._-]mac\.zip/i)
  end

  app "Spline.app"

  zap trash: "~/Library/Preferences/com.design.spline.plist"
end
