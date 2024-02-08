cask "openvanilla" do
  version "1.6.4,3310"
  sha256 "06e5cf778bd19ea05d85d037d472dffd8ffad6cc1dfb51814435db14f1eb139e"

  url "https://github.com/openvanilla/openvanilla/releases/download/#{version.csv.first}/OpenVanilla-Installer-Mac-#{version.csv.first}.zip",
      verified: "github.com/openvanilla/openvanilla/"
  name "OpenVanilla"
  desc "Provides common input methods"
  homepage "https://openvanilla.org/"

  livecheck do
    url "https://raw.githubusercontent.com/openvanilla/openvanilla/master/Source/Mac/OpenVanilla-Info.plist"
    strategy :page_match do |page|
      shortversion = page.match(/CFBundleShortVersionString.*?\n.*?(\d+(?:\.\d+)+)/i)
      version = page.match(/CFBundleVersion.*?\n.*?(\d+(?:\.\d+)*)/i)
      next if shortversion.blank? || version.blank?

      "#{shortversion[1]},#{version[1]}"
    end
  end

  container nested: "OpenVanillaInstaller.app/Contents/Resources/NotarizedArchives/OpenVanilla-r#{version.csv.second}.zip"

  input_method "OpenVanilla.app"

  caveats do
    logout
  end
end
