cask "signet" do
  version "1.3,2020.09"
  sha256 "ea48e77577e46848d5a3861782ddaaf05a725e6a4f14802ee29bc20bd88aeb50"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/#{token}#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com"
  name "Signet"
  desc "Scans and checks bundle signatures"
  homepage "https://eclecticlight.co/taccy-signet-precize-alifix-utiutility-alisma/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    strategy :page_match do |page|
      match = page.match(%r{/(\d+)/(\d+)/signet(\d+)\.zip}i)
      next if match.blank?

      "#{match[3].split("", 2).join(".")},#{match[1]}.#{match[2]}"
    end
  end

  app "#{token}#{version.before_comma.no_dots}/Signet.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Signet",
    "~/Library/Preferences/co.eclecticlight.Signet.plist",
    "~/Library/Saved Application State/co.eclecticlight.Signet.savedState",
  ]
end
