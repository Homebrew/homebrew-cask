cask "gdat" do
  version "2024r02,1lnA5hFiCV9qzreQE7a5YzdeValaicTHD"
  sha256 "a1ffb558cfaef70f2312365b27f92929fe76425d19379faf3e328c9f43609e0b"

  url "https://drive.google.com/uc?export=download&id=#{version.csv.second}",
      verified: "drive.google.com/uc?export=download&id=#{version.csv.second}"
  name "Genealogical DNA Analysis Tool"
  desc "App that utilises autosomal DNA to aid in the research of family trees"
  homepage "https://www.getgdat.com/"

  livecheck do
    url "https://www.getgdat.com/home/download"
    regex(%r{Genealogical\s+DNA\s+Analysis\s+Tool\s+(\d+r\d+).+drive\.google\.com/file/d/([^/]+).+?>\s*Mac}im)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "OS X 64 bit/Genealogical DNA Analysis Tool.app"

  zap trash: [
    "/Library/Logs/DiagnosticReports/Genealogical DNA Analysis Tool*.diag",
    "~/Library/Preferences/BeckinsLLC.GMP64.plist",
    "~/Library/Saved Application State/BeckinsLLC.GMP64.savedState",
  ]

  caveats do
    requires_rosetta
    license "https://www.getgdat.com/home/download/terms-of-use"
  end
end
