cask "gimp" do
  version "2.10.24"
  sha256 "d835afd64b4a617516a432a4ff78454594f5147786b4b900371a9fa68252567a"

  url "https://download.gimp.org/pub/gimp/v#{version.major_minor}/osx/gimp-#{version}-x86_64.dmg"
  name "GIMP"
  name "GNU Image Manipulation Program"
  desc "Free and open-source image editor"
  homepage "https://www.gimp.org/"

  livecheck do
    url "https://www.gimp.org/downloads/"
    strategy :page_match
    regex(%r{href=.*?/gimp-(\d+(?:\.\d+)*)-x86_64\.dmg}i)
  end

  auto_updates true

  app "GIMP-#{version.major_minor}.app"
  binary "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp"

  postflight do
    set_permissions "#{appdir}/GIMP-#{version.major_minor}.app/Contents/MacOS/gimp", "a+rx"
  end

  zap trash: [
    "~/Library/Preferences/org.gimp.gimp-#{version.major_minor}:.plist",
    "~/Library/Application Support/Gimp",
    "~/Library/Saved Application State/org.gimp.gimp-#{version.major_minor}:.savedState",
  ]
end
