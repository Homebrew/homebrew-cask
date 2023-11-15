cask "oxygen-xml-editor" do
  version "26.0,2023111306"
  sha256 "9224c5694dc61126a794d4a38852a2265a67ad09a526813bcba9ffc190193813"

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
