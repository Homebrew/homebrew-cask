cask "geogebra" do
  version "6.0.676.0"
  sha256 "f2352772bc6656e0c8bcf6e1d9cea5ca7aa7983111f84a41f082054592139bb7"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-Classic-#{version.major}-MacOS-Portable-#{version.dots_to_hyphens}.zip"
  name "GeoGebra"
  desc "Solve, save and share math problems, graph functions, etc"
  homepage "https://www.geogebra.org/"

  livecheck do
    url "https://download.geogebra.org/package/mac-port"
    strategy :header_match do |headers|
      v = headers["location"][%r{/GeoGebra-Classic-\d+-MacOS-Portable-(\d+(?:-\d+)*)\.zip}i, 1]
      v.tr("-", ".")
    end
  end

  app "GeoGebra Classic #{version.major}.app"

  uninstall quit:       [
    "com.apple.systemevents",
    "org.geogebra.mathapps",
  ],
            login_item: "GeoGebra",
            pkgutil:    "org.geogebra6.mac"

  zap trash: [
    "~/Library/GeoGebra",
    "~/Library/Preferences/org.geogebra.mathapps.helper.plist",
    "~/Library/Preferences/org.geogebra.mathapps.plist",
    "~/Library/Saved Application State/org.geogebra.mathapps.savedState",
  ]
end
