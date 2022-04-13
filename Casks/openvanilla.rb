cask "openvanilla" do
  version "1.6.2,3300"
  sha256 "2aa30f038376edf3c725f9654e6c939ee733104ac50e33f5161853da3353331e"

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
