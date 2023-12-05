cask "epson-scan2-ew-452a" do
  version "6.4.143.0,41"
  sha256 "9c34c1065c6677eb3784e2943925032f433eb7c06bf84986a7697652f7403b60"

  url "https://www.epson.jp/dl_soft/file/39033/EpsonScan2_EW452A_#{version.rpartition('.').first.remove(".")}_#{version.csv.second}.dmg"
  name "Epson Scan 2 (EW-452A)"
  desc "Scan utility and scanner driver for EW-452A"
  homepage "https://www.epson.jp/dl_soft/readme/39033.htm"

  livecheck do
    url "https://www.epson.jp/dl_soft/readme/39033.htm"
    regex(%r{Ver/Rev</th>\s+<td>(\d+\.\d+.\d+.\d+)</td>}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      match2 = page.match(%r{href=".*_(\d+).dmg"}i)

      "#{match[1]},#{match2[1]}"
    end
  end

  pkg "Epson Scan 2.pkg"

  uninstall pkgutil: [
    "com.epson.pkg.EpsonScan2.*",
    "com.epson.pkg.EpsonScan2",
  ]

  zap trash: [
    "~/Library/Preferences/com.epson.ica.es015c.plist",
  ]
end
