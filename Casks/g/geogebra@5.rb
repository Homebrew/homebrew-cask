cask "geogebra@5" do
  version "5.2.851.0"
  sha256 "d0b37b35d3c3f83a0816c509c296af85d98373fdee7556fb1a3513910c5d2c31"

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-MacOS-Installer-withJava-#{version.dots_to_hyphens}.zip"
  name "GeoGebra"
  desc "Solve, save and share math problems, graph functions, etc"
  homepage "https://www.geogebra.org/"

  livecheck do
    url "https://download.geogebra.org/package/mac"
    regex(%r{/GeoGebra[._-]MacOS[._-]Installer[._-]withJava[._-]v?(\d+(?:-\d+)+)\.zip}i)
    strategy :header_match do |headers, regex|
      match = headers["location"][regex, 1]
      next if match.blank?

      match.tr("-", ".")
    end
  end

  deprecate! date: "2025-05-01", because: :unsigned

  app "Geogebra.app"

  uninstall quit:       "org.geogebra#{version.major}.mac",
            login_item: "Geogebra"

  zap trash: "~/Library/Saved Application State/org.geogebra5.mac.savedState"
end
