cask "gdat" do
  version "2023r01,1lnA5hFiCV9qzreQE7a5YzdeValaicTHD"
  sha256 "cda240039696b18972b0fb9d7ebccab107baa41a2a87342515c73a4e29e6d4d7"

  url "https://drive.google.com/uc?export=download&id=#{version.csv.second}",
      verified: "drive.google.com/uc?export=download&id=#{version.csv.second}"
  name "Genealogical DNA Analysis Tool"
  desc "App that utilizes autosomal DNA to aid in the research of family trees"
  homepage "https://www.getgdat.com/"

  livecheck do
    url "https://www.getgdat.com/home/download"
    strategy :page_match do |page|
      match = page.match(
        %r{Genealogical DNA Analysis Tool (\d+(?:.\d+)+).*drive.google.com/file/d/([^/]+).*?Mac}i,
      )

      "#{match[1]},#{match[2]}" if match
    end
  end

  app "OS X 64 bit/Genealogical DNA Analysis Tool.app"
end
