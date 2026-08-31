cask "geogebra" do
  version "6.0.929.3"
  sha256 "aea28b3ea8cb205cd505fc5f1d77335c0b6db4e6919a657af44c493d24dd54a6"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-Classic-#{version.major}-MacOS-Portable-#{version.dots_to_hyphens}.zip"
  name "GeoGebra"
  desc "Solve, save and share math problems, graph functions, etc"
  homepage "https://www.geogebra.org/"

  livecheck do
    url "https://download.geogebra.org/package/mac-port"
    regex(%r{[^/]+?v?(\d+(?:[.-]\d+)+)[^/]+?$}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      match[1].tr("-", ".")
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "GeoGebra Classic #{version.major}.app"

  uninstall quit:       "org.geogebra.mathapps",
            login_item: "GeoGebra",
            pkgutil:    "org.geogebra#{version.major}.mac"

  zap trash: [
    "~/Library/Application Scripts/org.geogebra#{version.major}.mac",
    "~/Library/Application Scripts/W5S878FTRC.org.geogebra#{version.major}.mac",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.geogebra#{version.major}.mac.sfl*",
    "~/Library/Containers/org.geogebra#{version.major}.mac",
    "~/Library/GeoGebra",
    "~/Library/Group Containers/W5S878FTRC.org.geogebra#{version.major}.mac",
    "~/Library/Preferences/org.geogebra.mathapps.helper.plist",
    "~/Library/Preferences/org.geogebra.mathapps.plist",
    "~/Library/Saved Application State/org.geogebra.mathapps.savedState",
  ]
end
