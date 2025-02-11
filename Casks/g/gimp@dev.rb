cask "gimp@dev" do
  arch arm: "arm64", intel: "x86_64"

  version "3.0.0-RC3"
  sha256 arm:   "eb55392e09c4ce6c46eb43f401b59997670b4e99c859b4a73c56db15b3ba7fad",
         intel: "bfa713b6f1aef0fea6243f47bede2552b58c9b0417ace3597f1e3c4763b39aab"

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
