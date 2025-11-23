cask "toshiba-color-mfp" do
  version "7.119.4.0,21838"
  sha256 "e8d43a0a98f829a2f81fb7e785bc6dec1773b3c00e27d3f63e80d1a7957c1f3b"

  url "https://business.toshiba.com/downloads/KB/f1Ulds/#{version.csv.second}/TOSHIBA_ColorMFP.dmg.gz"
  name "Toshiba ColorMFP Drivers"
  desc "Drivers for Toshiba ColorMFP devices"
  homepage "https://business.toshiba.com/support"

  livecheck do
    url "https://business.toshiba.com/support/downloads/GetDownloads.jsp?model=e-STUDIO3515AC"
    strategy :json do |json|
      json["drivers"]&.map do |item|
        next unless item["name"]&.include?("MacDC")

        id = item["id"]
        version = item["versionName"]
        next if id.blank? || version.blank?

        "#{version},#{id}"
      end
    end
  end

  pkg "TOSHIBA ColorMFP.pkg"

  uninstall pkgutil: "com.toshiba.pde.x7.colormfp",
            delete:  [
              "/Library/Printers/PPDs/Contents/Resources/TOSHIBA_ColorMFP*.gz",
              "/Library/Printers/toshiba",
            ]

  # No zap stanza required
end
