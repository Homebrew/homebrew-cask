cask "canon-mg2500-driver" do
  version "16.90.0.0,04,0100011526,6"
  sha256 "93a2289b5c69017cc87289b972566411c802d0e73457fb33c8b88a9f2947d13b"

  url "https://gdlp01.c-wss.com/gds/#{version.csv.fourth}/#{version.csv.third}/#{version.csv.second}/mcpd-mac-mg2500-#{version.csv.first.dots_to_underscores}-ea21_3.dmg",
      verified: "gdlp01.c-wss.com/"
  name "Canon PIXMA driver"
  desc "CUPS driver for Canon PIXMA 2500 series"
  homepage "https://ij.manual.canon/ij/webmanual/Manual/M/MG2500%20series/EN/CNT/Top.html"

  livecheck do
    url "https://pdisp01.c-wss.com/gdl/WWUFORedirectTarget.do?id=MDEwMDAxMTUyNjA0&cmp=ABR&lang=EN"
    regex(%r{(\d+)/(\d+)/(\d+)/mcpd-mac-mg2500-(\d+(?:[_]\d+)+)-ea21_3\.dmg}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[4].tr("_", ".")},#{match[3]},#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :big_sur"

  pkg "PrinterDriver_MG2500 series_#{version.csv.first.no_dots}.pkg"

  uninstall pkgutil: "jp.co.canon.pkg.MG2500-*",
            delete:  "/Library/Printers/PPDs/Contents/Resources/CanonIJMG2500series.ppd.gz"

  zap trash: "/Library/Caches/Canon"
end
