cask "gimp@dev" do
  arch arm: "arm64", intel: "x86_64"

  version "2.99.18"
  sha256 arm:   "bb042d5647413ea5d374ac82092e3b6aa1602d72d7c8822d31c25c0a4b6bdf15",
         intel: "196582ee69a8b3fdc075ff4aaf01bc1bc6975adac89650da12f80087b642e9ee"

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-#{arch}.dmg"
  name "GIMP development version"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/devel/"
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:[.-]\d+)+)[._-]#{arch}\.dmg}i)
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
