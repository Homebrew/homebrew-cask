cask "cirrus" do
  version "1.12,2021.04"
  sha256 "80ed7a29fdaafa54aaf11a455716be15be248424a81301e1352c59696ef63ffa"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/cirrus#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Cirrus"
  desc "Inspector for iCloud Drive folders"
  homepage "https://eclecticlight.co/cirrus-bailiff/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    strategy :page_match do |page|
      match = page.match(%r{/(\d+)/(\d+)/cirrus(\d+)\.zip}i)
      next if match.blank?

      "#{match[3].split("", 2).join(".")},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "cirrus#{version.csv.first.major}#{version.csv.first.minor}/Cirrus.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.CirrusMac",
    "~/Library/Preferences/co.eclecticlight.CirrusMac.plist",
    "~/Library/Saved Application State/co.eclecticlight.CirrusMac.savedState",
  ]
end
