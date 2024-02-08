cask "spundle" do
  version "1.8,2023.12"
  sha256 "4c6692bc9cf1f6bdd006ee64a539bf5c2f0ebaddfd7bf27548d912bef120d513"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/spundle#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "spundle"
  desc "Create, resize and compact sparse bundles"
  homepage "https://eclecticlight.co/dintch/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{(\d+)/(\d+)/Spundle(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2].split("", 2).join(".")},#{match[0]}.#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "spundle#{version.csv.first.no_dots}/Spundle.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.Spundle",
    "~/Library/Preferences/co.eclecticlight.Spundle.plist",
    "~/Library/Saved Application State/co.eclecticlight.Spundle.savedState",
  ]
end
