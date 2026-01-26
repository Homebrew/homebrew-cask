cask "openvanilla" do
  version "1.8.4,3499"
  sha256 "2021b1990b830e6e7db26a66b07230667e297c161162428673fa247692a6dab8"

  url "https://github.com/openvanilla/openvanilla/releases/download/#{version.csv.first}/OpenVanilla-Installer-Mac-#{version.csv.first}.zip",
      verified: "github.com/openvanilla/openvanilla/"
  name "OpenVanilla"
  desc "Provides common input methods"
  homepage "https://openvanilla.org/"

  livecheck do
    url "https://raw.githubusercontent.com/openvanilla/openvanilla/master/Source/Mac/OpenVanilla-Info.plist"
    strategy :xml do |xml|
      short_version = xml.elements["//key[text()='CFBundleShortVersionString']"]&.next_element&.text
      version = xml.elements["//key[text()='CFBundleVersion']"]&.next_element&.text
      next if short_version.blank? || version.blank?

      "#{short_version.strip},#{version.strip}"
    end
  end

  container nested: "OpenVanillaInstaller.app/Contents/Resources/NotarizedArchives/OpenVanilla-r#{version.csv.second}.zip"

  input_method "OpenVanilla.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.openvanilla.*.sfl*",
    "~/Library/Application Support/OpenVanilla",
    "~/Library/Preferences/org.openvanilla.*",
  ]

  caveats do
    logout
  end
end
