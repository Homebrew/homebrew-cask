cask "gimp@dev" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.0-RC2"
  sha256 arm:   "a0e91fb827b335a15ec1c9bd7252408a28278158e138b682ab2284776223836f",
         intel: "6ea7d1f9235aff328ed54960e09144ca370040eae73da11f0f622a3fcc40ac6e"

  url "https://download.gimp.org/gimp/v#{version.major_minor}/macos/gimp-#{version}-#{arch}.dmg"
  name "GIMP development version"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/devel/"
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:[.-]\d+)+(?:[._-]RC\d+)?)[._-]#{arch}\.dmg}i)
  end

  conflicts_with cask: "gimp"
  depends_on macos: ">= :high_sierra"

  app "GIMP.app"
  binary "#{appdir}/GIMP.app/Contents/MacOS/gimp"

  postflight do
    set_permissions "#{appdir}/GIMP.app/Contents/MacOS/gimp", "a+rx"
  end

  zap trash: [
    "~/Library/Application Support/Gimp",
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
  ]
end
