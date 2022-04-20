cask "oxygen-xml-editor" do
  arch = Hardware::CPU.intel? ? "" : "-aarch64"

  version "24.1,2022041507"
  sha256

  if Hardware::CPU.intel?
    sha256 "4b46b522084a3b824395aec638a3e081146ad4a4e3686c68b7621b84e5da1efa"
  else
    sha256 "a07c150ebd8a127d31ed4b2922c60134923c4fe36018a56cc0884dcee2feba9a"
  end

  url "https://www.oxygenxml.com/InstData/Editor/MacOSX/VM/oxygen-openjdk#{arch}.dmg"
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

  suite "Oxygen XML Editor"
end
