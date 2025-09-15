cask "bambusuite" do
  version "01.01.01.50,20250826_233257_761"
  sha256 "f770bf72dbe727c95bc6b6765e5d4e8da372b7c1061a44a9fabadd514652c984"

  url "https://public-cdn.bblmw.com/general_pkg/prod/setup/#{version.csv.second}/Bambu_Suite_Public_MAC_#{version.csv.first}.dmg",
      verified: "public-cdn.bblmw.com/general_pkg/prod/setup/"
  name "Bambu Suite"
  desc "Bambu Labs software for laser cutting, blade cutting and pen drawing"
  homepage "https://bambulab.com/en/download/suite"

  livecheck do
    url :homepage
    regex(%r{/([^/]+)/Bambu[._-]?Suite[._-]Public(?:[._-]MAC)?[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :big_sur"

  app "BambuSuite.app"

  zap trash: [
    "/Library/Logs/DiagnosticsReports/BambuSuite*",
    "~/Library/Application Support/BambuSuite",
    "~/Library/Caches/com.bambulab.bambu-suite",
    "~/Library/HTTPStorages/com.bambulab.bambu-suite.binarycookies",
    "~/Library/Preferences/com.bambulab.bambu-suite.plist",
    "~/Library/Saved Application State/com.bambulab.bambu-suite.savedState",
    "~/Library/WebKit/com.bambulab.bambu-suite",
  ]
end
