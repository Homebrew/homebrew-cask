cask "geogebra" do
  version "6.0.596.0"
  sha256 "9f0b91e39a3f4f9d405beed98374771e25697404ced20e5c242d0c313c26e32d"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-Classic-#{version.major}-MacOS-Portable-#{version.dots_to_hyphens}.zip"
  appcast "https://download.geogebra.org/installers/#{version.major_minor}/version.txt",
          must_contain: version.dots_to_hyphens
  name "GeoGebra"
  homepage "https://www.geogebra.org/"

  app "GeoGebra Classic #{version.major}.app"

  uninstall quit:       "org.geogebra.mathapps",
            login_item: "GeoGebra",
            pkgutil:    "org.geogebra6.mac"

  zap trash: [
    "~/Library/GeoGebra",
    "~/Library/Preferences/org.geogebra.mathapps.helper.plist",
    "~/Library/Preferences/org.geogebra.mathapps.plist",
    "~/Library/Saved Application State/org.geogebra.mathapps.savedState",
  ]
end
