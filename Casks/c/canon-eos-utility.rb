cask "canon-eos-utility" do
  version "3.18.0.1,0200007073,3"
  sha256 "b046ffa5f127e6432907af49803df0680ae71a06d13bf6fc71448d1fd550f119"

  url "https://gdlp01.c-wss.com/gds/#{version.csv.third}/#{version.csv.second}/01/EU-Installset-M#{version.csv.first}.dmg.zip",
      verified: "gdlp01.c-wss.com/"
  name "Canon EOS Utility"
  desc "Communication with Canon EOS cameras"
  homepage "https://my.canon/en/support/0200653802/1"

  # Upstream provides an in-app update mechanism. To use this for livecheck we must access
  # the appcast feed that provides download links, and then use the links provided with
  # the HeaderMatch strategy to find the latest full version.
  livecheck do
    url "https://gdlp01.c-wss.com/rmds/ic/autoupdate/common/tls_eu_updater_url.xml"
    regex(%r{http.*?/(\d+)/(\d+)/\d+/EU[._-]Installset[._-]v?M?(\d+(?:\.\d+)+)\.dmg\.zip}i)
    strategy :page_match do |page, regex|
      match = page.match(/<Component\sID="[^"]+mac_14[^"]+".*\n?.*(https.*)\n/i)
      next if match.blank?

      url = match[1].strip
      next if url.blank?

      headers = Homebrew::Livecheck::Strategy.page_headers(url)
      next if headers.blank?

      match = headers[0]["location"].match(regex)
      next if match.blank?

      "#{match[3]},#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  installer manual: "eum#{version.csv.first.major_minor_patch}-installer.app"

  uninstall delete: [
              "/Applications/Canon Utilities/CameraSurveyProgram",
              "/Applications/Canon Utilities/EOS Lens Registration Tool",
              "/Applications/Canon Utilities/EOS Utility",
              "/Applications/Canon Utilities/EOS Web Service Registration Tool",
              "/Library/Application Support/Canon_Inc_IC/ImageBrowser EX Shared/Camera/{A2E97706-9B71-482d-92F1-70B1D010B943}.plist",
              "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/Auto Update Interface Library/Uninstall_for_EOS Utility.xml",
              "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/Auto Update Interface Library/Uninstall_for_EOS Web Service Registration Tool.xml",
              "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/CameraSurveyProgram",
              "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Lens Registration Tool",
              "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility 2",
              "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility 3",
              "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility Launcher",
              "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Utility",
              "/Library/Application Support/Canon_Inc_IC/UniversalInstaller/Uninstall/EOS Web Service Registration Tool",
            ],
            rmdir:  [
              "/Applications/Canon Utilities",
              "/Library/Application Support/Canon_Inc_IC/ImageBrowser EX Shared",
            ]

  zap trash: [
    "~/Library/Caches/com.canon.EOS-Lens-Registration-Tool",
    "~/Library/Caches/com.canon.UpdateChecker",
    "~/Library/Preferences/com.canon.EOS Utility 2.plist",
    "~/Library/Preferences/com.canon.EOS-Utility-3.plist",
    "~/Library/Preferences/com.canon.EOS-Utility.plist",
    "~/Library/Preferences/jp.co.canon.ic.camerasurveyprogram.plist",
  ]
end
