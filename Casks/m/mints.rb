cask "mints" do
  version "1.19,2024.02"
  sha256 "349666ccb8ec9e5a2016f29dd6fc4ab36a92d3714fea66c196037956a49f06f0"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/mints#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Mints"
  desc "Logging tool suite"
  homepage "https://eclecticlight.co/mints-a-multifunction-utility/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/mints(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2].split("", 2).join(".")},#{match[0]}.#{match[1]}"
      end
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
