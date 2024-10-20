cask "openvanilla" do
  version "1.7.0,3401"
  sha256 "525d43c0ff5235e3abeaebd53ec36a436fdfdaeb31b4208892ba0168d02c3bb7"

  url "https://github.com/openvanilla/openvanilla/releases/download/#{version.csv.first}/OpenVanilla-Installer-Mac-#{version.csv.first}.zip",
      verified: "github.com/openvanilla/openvanilla/"
  name "OpenVanilla"
  desc "Provides common input methods"
  homepage "https://openvanilla.org/"

  livecheck do
    url "https://raw.githubusercontent.com/openvanilla/openvanilla/master/Source/Mac/OpenVanilla-Info.plist"
    strategy :xml do |xml|
      short_version = xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text&.strip
      version = xml.elements["//key[text()='CFBundleVersion']"]&.next_element&.text&.strip
      next if short_version.blank? || version.blank?

      "#{short_version},#{version}"
    end
  end

  container nested: "OpenVanillaInstaller.app/Contents/Resources/NotarizedArchives/OpenVanilla-r#{version.csv.second}.zip"

  input_method "OpenVanilla.app"

  caveats do
    logout
  end
end
