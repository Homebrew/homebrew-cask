cask "simplysign" do
  version "2.10.19-9.3.3.0,2.10.19-9.3.3"
  sha256 "1c6ccc48ecf5e57b0cd85771ac5209b8d91351268d5302accce034a6b1039cc8"

  url "https://files.certum.eu/software/SimplySignDesktop/OSX/#{version.csv.first}/SimplySignDesktop-#{version.csv.second || version.csv.first}_prod.dmg"
  name "SimplySign Desktop"
  desc "Emulates a physical crypto card/reader for proCertum SmartSign"
  homepage "https://support.certum.eu/en/software/procertum-smartsign/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/v?(\d+(?:[.-]\d+)+)/SimplySignDesktop[._-]v?(\d+(?:[.-]\d+)+)[._-]prod\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        (match[0] == match[1]) ? match[0] : "#{match[0]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :monterey"

  pkg "SimplySignDesktop-#{version.csv.first}_signed_prod.pkg"

  uninstall launchctl: "pl.ads.SimplySignDesktop",
            quit:      [
              "pl.ads.SimplySign-Desktop",
              "pl.unizeto.pcja.SmartSign",
            ],
            pkgutil:   "pl.assecods.pkg.SimplySignDesktop-proCertumSmartSign",
            delete:    [
              "/Applications/proCertumSmartSign.app",
              "/usr/local/lib/libSimplySignPKCS.dylib",
              "/usr/local/lib/SimplySignPKCS", # Alphabetized
            ]

  zap trash: [
    "~/Library/LaunchAgents/pl.ads.SimplySignDesktop.plist",
    "~/Library/Preferences/pl.ads.SimplySign-Desktop.plist",
    "~/SimplySignDesktop.xml",
  ]

  caveats do
    requires_rosetta
  end
end
