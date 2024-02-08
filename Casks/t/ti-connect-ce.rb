cask "ti-connect-ce" do
  version "6.0.1.344,D96C79959E494383BDCA94D0478FFF05"
  sha256 "e112df8a5b4d441d262b03e17966c84136bdc71d64387bfa52a83937e4885bb9"

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
end
