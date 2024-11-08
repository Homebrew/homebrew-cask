cask "gimp@dev" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.0-RC1"
  sha256 arm:   "bc0f834690cbd030e6ec1598ebc2d987de6b35da4651ed93d5b8b2be2c4dfd54",
         intel: "82e7d191c343ee71b09d4fd2faeed5374560949d87e1f5b6aceae8a711cdecf9"

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
