cask "oxygen-xml-editor" do
  version "26.1,2024073008"
  sha256 "f46650473d0adcb6dbaf5ec800bd34e6d8487ed3325d631d41817980c5708eb9"

  url "https://archives.oxygenxml.com/Oxygen/Editor/InstData#{version.csv.first}/MacOSX/VM/oxygen-openjdk.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

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

  suite "Oxygen XML Editor"

  zap trash: "~/Library/Preferences/com.oxygenxml"

  caveats do
    license "https://www.oxygenxml.com/eula.html"
  end
end
