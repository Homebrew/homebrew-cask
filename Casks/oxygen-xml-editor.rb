cask "oxygen-xml-editor" do
  version "25.1,2023031510"
  sha256 "8ec7b46b4fa754e373b8e2356598e605d1d8a8dee262a7d6c2a66acc3f0ba75a"

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

  caveats do
    license "https://www.oxygenxml.com/eula.html"
  end
end
