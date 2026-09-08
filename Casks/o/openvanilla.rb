cask "openvanilla" do
  version "1.8.6,3516"
  sha256 "db11af44b5b5a82e1875cbd6a95a91012386a02a074128d26eeac80d574b129a"

  url "https://github.com/openvanilla/openvanilla/releases/download/#{version.csv.first}/OpenVanilla-Installer-Mac-#{version.csv.first}.zip"
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

  depends_on :macos
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
