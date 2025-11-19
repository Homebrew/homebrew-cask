cask "canon-eos-utility" do
  version "3.20.10.1,0200007518,8"
  sha256 "d69c250fcbf21c07533f249ec98f032d28ea0b9b88e745486fa383d1f941ca1a"

  url "https://gdlp01.c-wss.com/gds/#{version.csv.third}/#{version.csv.second}/01/EU#{version.csv.first.major}Installer-M#{version.csv.first}.dmg.zip",
      verified: "gdlp01.c-wss.com/"
  name "Canon EOS Utility"
  desc "Communication with Canon EOS cameras"
  homepage "https://app.ssw.imaging-saas.canon/app/en/eu.html"

  # The upstream data for the in-app updater uses redirecting URLs, so we have
  # to find and fetch the URL for macOS to be able to match the cask `version`
  # parts from the file URL in the `location` header of the response.
  livecheck do
    url "https://gdlp01.c-wss.com/rmds/ic/autoupdate/common/tls_eu_updater_url.xml"
    regex(%r{/(\d+)/(\d+)/\d+/EU\d*[._-]?Install(?:er|set)[._-]v?M?(\d+(?:\.\d+)+)\.dmg\.zip}i)
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

  pkg "EU3Installer-M#{version.csv.first}.pkg"

  uninstall pkgutil: [
    "com.canon.EOS-Lens-Registration-Tool",
    "com.canon.EOS-Network-Setting-Tool",
    "com.canon.EOS-Utility",
    "com.canon.EOS-Utility-3",
    "com.canon.EOS-Web-Service-Registration-Tool",
    "jp.co.canon.ic.CameraSurveyProgram",
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
