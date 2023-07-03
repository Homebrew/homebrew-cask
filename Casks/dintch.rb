cask "dintch" do
  version "1.6,2023.05"
  sha256 "61444cc980f6c6f9dc11bf222e60d04d479b96d3c3d5f8cbbae3675809a9292a"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/dintch#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Dintch"
  desc "Check the integrity of your files"
  homepage "https://eclecticlight.co/dintch"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    strategy :page_match do |page|
      match = page.match(%r{(\d+)/(\d+)/dintch(\d+)\.zip}i)
      next if match.blank?

      "#{match[3].split("", 2).join(".")},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "dintch#{version.csv.first.no_dots}/Dintch.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Dintch",
    "~/Library/HTTPStorages/co.eclecticlight.Dintch",
    "~/Library/Preferences/co.eclecticlight.Dintch.plist",
    "~/Library/Saved Application State/co.eclecticlight.Dintch.savedState",
  ]
end
