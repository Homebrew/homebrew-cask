cask "geogebra@5" do
  version "5.2.875.1"
  sha256 "b1aa6bd040c9a6e9b6cd0387a0ce30c5f3f523afc8522a11ea3633d1a4a4e4c3"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-MacOS-Installer-withJava-#{version.dots_to_hyphens}.zip"
  name "GeoGebra"
  desc "Solve, save and share math problems, graph functions, etc"
  homepage "https://www.geogebra.org/"

  livecheck do
    url "https://download.geogebra.org/package/mac"
    regex(%r{/GeoGebra[._-]MacOS[._-]Installer[._-]withJava[._-]v?(\d+(?:-\d+)+)\.zip}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      match[1].tr("-", ".")
    end
  end

  app "Geogebra.app"

  uninstall quit:       "org.geogebra#{version.major}.mac",
            login_item: "Geogebra"

  zap trash: "~/Library/Saved Application State/org.geogebra5.mac.savedState"
end
