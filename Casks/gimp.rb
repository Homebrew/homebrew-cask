cask "gimp" do
  version "2.10.30"
  sha256 "6f9e0384882bc176699e4f85950971c264c21328d98226f8c7fe9da7e55b932c"

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-x86_64.dmg"
  name "GIMP"
  name "GNU Image Manipulation Program"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/"
    regex(%r{href=.*?/gimp[._-]v?(\d+(?:\.\d+)+)[._-]x86[._-]64\.dmg}i)
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
