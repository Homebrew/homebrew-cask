cask "cirrus" do
  version "1.13,2023.07"
  sha256 "cc3d3cae9c4714ec3be526832e26550ea8e9c8f89389f69d45d4f6cf6cb13fe5"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/cirrus#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Cirrus"
  desc "Inspector for iCloud Drive folders"
  homepage "https://eclecticlight.co/cirrus-bailiff/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/cirrus(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
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
