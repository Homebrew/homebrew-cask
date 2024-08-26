cask "oxygen-xml-developer" do
  version "26.1,2024073008"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://archives.oxygenxml.com/Oxygen/Developer/InstData#{version.csv.first}/MacOSX/VM/oxygenDeveloper-openjdk.dmg"
  name "oXygen XML Developer"
  desc "Tools for XML editing"
  homepage "https://www.oxygenxml.com/xml_developer.html"

  livecheck do
    url "https://www.oxygenxml.com/rssBuildID.xml"
    strategy :page_match do |page|
      version = page.match(/Oxygen\sXML\sEditor\sversion\s(\d+(?:\.\d+)+)/i)
      build = page.match(/build\sid:\s(\d+)/i)
      next if version.blank? || build.blank?

      "#{version[1]},#{build[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  suite "Oxygen XML Developer"

  zap trash: "~/Library/Preferences/com.oxygenxml.developer"

  caveats do
    license "https://www.oxygenxml.com/eula.html"
  end
end
