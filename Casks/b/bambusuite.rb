cask "bambusuite" do
  version "01.06.00.00,20261103_165339_121"
  sha256 "26d038442446658c5172acbbdb612fbd4fc084b23bda437a28ed3d3108ef9732"

  url "https://public-cdn.bblmw.com/general_pkg/prod/setup/#{version.csv.second}/Bambu_Suite_Public_Mac_#{version.csv.first}.dmg"
  name "Bambu Suite"
  desc "Software for laser cutting, blade cutting and pen drawing"
  homepage "https://bambulab.com/en/download/suite"

  livecheck do
    url "https://wiki.bambulab.com/en/software/bambu-suite/release-notes"
    regex(%r{/(\d+(?:_\d+)+)/Bambu[._-]?Suite[._-]Public[._-]Mac[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on :macos

  app "BambuSuite.app"

  uninstall quit: "com.bambulab.BambuSuite"

  zap trash: [
    "~/Library/Application Support/Bambu Suite",
    "~/Library/Caches/Zhuma Technology/Bambu Suite",
  ]
end
