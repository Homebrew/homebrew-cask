cask "gdat" do
  version "2024r03,1lnA5hFiCV9qzreQE7a5YzdeValaicTHD"
  sha256 "6023f510d005bd1f655c64d7a2a11c1b5cf6779ec5b7ea3574a3a84f08833ef3"

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
