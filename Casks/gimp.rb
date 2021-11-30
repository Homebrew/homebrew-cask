cask "gimp" do
  version "2.10.28"
  sha256 "8cf0db374dcaba6fb0e1184ff8c6a3c585aa1814189ed4b97ba51780469f0805"

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-x86_64.dmg"
  name "GIMP"
  name "GNU Image Manipulation Program"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/"
    strategy :page_match
    regex(%r{href=.*?/gimp-(\d+(?:\.\d+)+)-x86_64\.dmg}i)
  end

  app "GIMP-#{version.major_minor}.app"
  binary "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp"

  postflight do
    set_permissions "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp", "a+rx"
  end

  zap trash: [
    "~/Library/Application Support/Gimp",
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
  ]
end
