cask "precize" do
  version "1.15,2024.08"
  sha256 "59339442a7e662d6de5eafb2779b6811a6d27e0919daa71924b921125c56f66c"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/precize#{version.csv.first.no_dots}.zip"
  name "precize"
  desc "Detailed information for files, bundles and folders"
  homepage "https://eclecticlight.co/taccy-signet-precize-alifix-utiutility-alisma/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    strategy :page_match do |page|
      match = page.match(%r{(\d+)/(\d+)/precize(\d+)\.zip}i)
      next if match.blank?

      "#{match[3].split("", 2).join(".")},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "precize#{version.csv.first.no_dots}/Precize.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Precize",
    "~/Library/HTTPStorages/co.eclecticlight.Precize",
    "~/Library/Preferences/co.eclecticlight.Precize.plist",
    "~/Library/Saved Application State/co.eclecticlight.Precize.savedState",
  ]
end
