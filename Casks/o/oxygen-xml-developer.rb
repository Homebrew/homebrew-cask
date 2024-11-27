cask "oxygen-xml-developer" do
  version "27.0,2024112212"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://archives.oxygenxml.com/Oxygen/Developer/InstData#{version.csv.first}/MacOSX/VM/oxygenDeveloper-openjdk.dmg"
  name "oXygen XML Developer"
  desc "Tools for XML editing"
  homepage "https://www.oxygenxml.com/xml_developer.html"

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

  depends_on macos: ">= :sierra"

  suite "Oxygen XML Developer"

  zap trash: "~/Library/Preferences/com.oxygenxml.developer"

  caveats do
    license "https://www.oxygenxml.com/eula.html"
  end
end
