cask "metamer" do
  version "1.5,2023.11"
  sha256 "bd158fd3afe0837a5a312858be50ec285f417945c04131d8570fe55cf22112f6"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/metamer#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Metamer"
  desc "Accessible metadata editor for 16 Spotlight extended attributes"
  homepage "https://eclecticlight.co/xattred-sandstrip-xattr-tools/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\d+)/(\d+)/metamer(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2].split("", 2).join(".")},#{match[0]}.#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "metamer#{version.csv.first.no_dots}/Metamer.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.metamer.sfl*",
    "~/Library/Caches/co.eclecticlight.Metamer",
    "~/Library/HTTPStorages/co.eclecticlight.Metamer",
    "~/Library/Preferences/co.eclecticlight.Metamer.plist",
    "~/Library/Saved Application State/co.eclecticlight.Metamer.savedState",
  ]
end
