cask "ti-connect-ce" do
  version "6.0.4.688,4A6786493CA947879440842241901349"
  sha256 "3412d77aace33a6ef7f520a8013797fe1d509c1bdcfd24c149459a165c2cc360"

  url "https://education.ti.com/download/en/ed-tech/68CEDD34FDC94622B4DBD173E6A0D8C3/#{version.csv.second}/TIConnectCE-#{version.csv.first}.dmg"
  name "TI Connect™ CE"
  desc "Connectivity software for the TI-84 Plus family of graphing calculators"
  homepage "https://education.ti.com/en/products/computer-software/ti-connect-ce-sw"

  livecheck do
    url "https://education.ti.com/en/software/details/en/68CEDD34FDC94622B4DBD173E6A0D8C3/swticonnectcesoftwareformacintosh"
    regex(%r{href=.*?/(\h+)/TIConnectCE[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on :macos

  app "TI Connect CE.app"

  zap trash: [
    "~/Library/Logs/Texas Instruments/TI Connect CE",
    "~/Library/Preferences/com.ti.et.elg.tiConnect.TIConnectApplication.plist",
    "~/Library/Saved Application State/com.ti.et.elg.tiConnect.TIConnectApplication.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
