cask "ti-connect-ce" do
  version "6.0.3.619,A638B349DE8A41B98983D04D6575316B"
  sha256 "dbea817704bb154319f275fe4d3be79d9826f9570082ce3f959ec5d8d6e4c064"

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
