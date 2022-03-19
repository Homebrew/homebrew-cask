cask "dia" do
  version "0.97.2,7"
  sha256 "9d3038c01347716800688830eaf52204deb78affe74a5f0c6e0a48fd414d44be"

  url "https://downloads.sourceforge.net/dia-installer/dia/#{version.csv.first}/Dia-#{version.csv.first}-#{version.csv.second}.dmg",
      verified: "sourceforge.net/dia-installer/dia/"
  name "Dia"
  desc "Draw structured diagrams"
  homepage "http://dia-installer.de/"

  livecheck do
    url "http://dia-installer.de/download/macosx.html"
    strategy :page_match do |page|
      page.scan(/href=.*?Dia[._-]v?(\d+(?:\.\d+)+)-(\d+)\.dmg/i)
          .map { |matches| "#{matches[0]},#{matches[1]}" }
    end
  end

  depends_on cask: "xquartz"

  app "Dia.app"
end
