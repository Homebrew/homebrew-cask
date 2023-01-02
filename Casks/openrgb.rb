cask "openrgb" do
  version "0.8,fb88964"

  on_intel do
    sha256 "3d04b3caf0253e23a6fa7f854ee070cea7e589f3f1972d1975b512660d97fb1d"
    url "https://openrgb.org/releases/release_#{version.before_comma}/OpenRGB_#{version.before_comma}_MacOS_Intel_#{version.after_comma}.zip"
  end
  on_arm do
    sha256 "564a08138900d3e96bd045dba45bf3ac740720eb66d413cf4564f36218e177ea"
    url "https://openrgb.org/releases/release_#{version.before_comma}/OpenRGB_#{version.before_comma}_MacOS_ARM64_#{version.after_comma}.zip"
  end

  name "OpenRGB"
  desc "Open source RGB lighting control that doesn't depend on manufacturer software"
  homepage "https://openrgb.org/"

  livecheck do
    url "https://gitlab.com/CalcProgrammer1/OpenRGB/-/releases.json"
    regex(%r{/releases/release_([^/]+)/OpenRGB_\1+_MacOS_Intel_([a-f0-9]+).zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "OpenRGB.app"

  zap trash: [
    "~/Library/Preferences/com.yourcompany.OpenRGB.plist",
    "~/Library/Saved Application State/com.yourcompany.OpenRGB.savedState",
    "~/.config/OpenRGB",
  ]
end
