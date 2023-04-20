cask "openrgb" do
  arch arm: "ARM64", intel: "Intel"

  version "0.8,fb88964"
  sha256 arm:   "564a08138900d3e96bd045dba45bf3ac740720eb66d413cf4564f36218e177ea",
         intel: "3d04b3caf0253e23a6fa7f854ee070cea7e589f3f1972d1975b512660d97fb1d"

  url "https://openrgb.org/releases/release_#{version.csv.first}/OpenRGB_#{version.csv.first}_MacOS_#{arch}_#{version.csv.second}.zip"
  name "OpenRGB"
  desc "Open source RGB lighting control that doesn't depend on manufacturer software"
  homepage "https://openrgb.org/"

  livecheck do
    url "https://openrgb.org/releases.html"
    regex(/href=.*?OpenRGB[._-]v?(\d+(?:\.\d+)+)[._-]MacOS[._-]#{arch}[._-](\h+)\.zip/i)
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
