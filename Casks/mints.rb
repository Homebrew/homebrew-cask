cask "mints" do
  version "1.10,2022.12"
  sha256 "6485b9ca8c108914b3de51a539d189795afc7f5965089635a7ac650a52f35448"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/mints#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Mints"
  desc "Logging tool suite"
  homepage "https://eclecticlight.co/mints-a-multifunction-utility/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    strategy :page_match do |page|
      match = page.match(%r{/(\d+)/(\d+)/mints(\d+)\.zip}i)
      next if match.blank?

      "#{match[3].split("", 2).join(".")},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "mints#{version.csv.first.no_dots}/Mints.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Mints",
    "~/Library/HTTPStorages/co.eclecticlight.Mints",
    "~/Library/Preferences/co.eclecticlight.Mints.plist",
    "~/Library/Saved Application State/co.eclecticlight.Mints.savedState",
  ]
end
