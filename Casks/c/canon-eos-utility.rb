cask "canon-eos-utility" do
  version "3.19.0.12,0200007310,0"
  sha256 "c13cf1f3de7fd85ed506cd41e67b57a680c07b944d310c82b8e0b17d97e16f92"

  url "https://gdlp01.c-wss.com/gds/#{version.csv.third}/#{version.csv.second}/01/EU-Installset-M#{version.csv.first}.dmg.zip",
      verified: "gdlp01.c-wss.com/"
  name "Canon EOS Utility"
  desc "Communication with Canon EOS cameras"
  homepage "https://app.ssw.imaging-saas.canon/app/en/eu.html"

  # The upstream data for the in-app updater uses redirecting URLs, so we have
  # to find and fetch the URL for macOS to be able to match the cask `version`
  # parts from the file URL in the `location` header of the response.
  livecheck do
    url "https://gdlp01.c-wss.com/rmds/ic/autoupdate/common/tls_eu_updater_url.xml"
    regex(%r{/(\d+)/(\d+)/\d+/EU[._-]Installset[._-]v?M?(\d+(?:\.\d+)+)\.dmg\.zip}i)
    strategy :xml do |xml, regex|
      # NOTE: The macOS identifier will need to be manually updated when
      # releases become available for newer macOS versions.
      url = xml.elements["//Component[contains(@ID,'mac_15')]"]&.text&.strip
      next if url.blank?

      merged_headers = Homebrew::Livecheck::Strategy.page_headers(url).reduce(&:merge)

      match = merged_headers["location"]&.match(regex)
      next if match.blank?

      "#{match[3]},#{match[2]},#{match[1]}"
    end
  end

  auto_updates true

  installer manual: "eum#{version.csv.first.major_minor_patch}-installer.app"

  uninstall delete: [
              "/Applications/Canon Utilities/CameraSurveyProgram",
              "/Applications/Canon Utilities/EOS Lens Registration Tool",
              "/Applications/Canon Utilities/EOS Network Setting Tool",
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
