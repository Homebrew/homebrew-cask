cask "geogebra@5" do
  version "5.2.887.0"
  sha256 "6f3ced7e70665c44c8b2e80cf0922497ba7dbbf9a503d34d332a0c0d7d329460"

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
