cask "geogebra" do
  version "6.0.683.0"
  sha256 "ab1fd8a1ef08244a2946eaff7648fc15fe5bca98d8c9d75bc80dd4e6026cfb31"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-Classic-#{version.major}-MacOS-Portable-#{version.dots_to_hyphens}.zip"
  name "GeoGebra"
  desc "Solve, save and share math problems, graph functions, etc"
  homepage "https://www.geogebra.org/"

  livecheck do
    url "https://download.geogebra.org/package/mac-port"
    strategy :header_match do |headers|
      v = headers["location"][%r{/GeoGebra-Classic-\d+-MacOS-Portable-(\d+(?:-\d+)+)\.zip}i, 1]
      next if v.blank?

      v.tr("-", ".")
    end
  end

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
