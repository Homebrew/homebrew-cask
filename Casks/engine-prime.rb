cask "engine-prime" do
  version "1.6.1,5f4b42a70b"
  sha256 "978c1fdde817f855242502a833b9a7447501fdc2ba9af0d941509561059f90b3"

  url "https://cdn.inmusicbrands.com/denondj/EnginePrime/#{version.csv.first.no_dots}/Engine_Prime_#{version.csv.first}_#{version.csv.second}_Setup.dmg",
      verified: "inmusicbrands.com/"
  name "Engine Prime"
  desc "Music Management Software for Denon's Engine OS Hardware"
  homepage "https://www.denondj.com/engineprime"

  livecheck do
    url "https://www.denondj.com/downloads"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/Engine[._-]?Prime[._-]?v?(\d+(?:\.\d+)*)(?:[._-]([0-9a-z]+))?[._-]Setup\.dmg}i)
      next if match.blank?

      "#{match[1]}#{"," + match[2] if match[2]}"
    end
  end

  pkg "Engine Prime_#{version.before_comma}_Setup.pkg"

  uninstall pkgutil: "com.airmusictechnology.engineprime.application"

  zap trash: "~/Music/Engine Library"
end
