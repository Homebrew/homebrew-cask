cask "oxygen-xml-editor" do
  version "28.0,2025121615"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.oxygenxml.com/InstData/Editor/MacOSX/VM/oxygen-openjdk.dmg"
  name "oXygen XML Editor"
  desc "Tools for XML editing, including Oxygen XML Developer and Author"
  homepage "https://www.oxygenxml.com/xml_editor.html"

  livecheck do
    url "https://www.oxygenxml.com/rssBuildID.xml"
    regex(/Oxygen\s+XML\s+Editor\s+(?:version\s+)?v?(\d+(?:\.\d+)+)/i)
    strategy :xml do |xml, regex|
      versions = xml.get_elements("//description").filter_map do |item|
        match = item.text&.strip&.match(regex)
        next if match.blank?

        match[1]
      end
      builds = xml.get_elements("//guid").map { |item| item.text&.strip }

      version = versions.max_by { |v| Version.new(v) }
      build = builds.max
      next if version.blank? || build.blank?

      "#{version},#{build}"
    end
  end

  suite "Oxygen XML Editor"

  zap trash: "~/Library/Preferences/com.oxygenxml"

  caveats do
    license "https://www.oxygenxml.com/eula.html"
  end
end
