cask "taccy" do
  version "1.15,2023.06"
  sha256 "d5f1f00ff105007c8a64f277aa230a0caf1ea89a19e742d972f329d067afd7c3"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/#{token}#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Taccy"
  desc "Troubleshoot signature and privacy problems in applications"
  homepage "https://eclecticlight.co/taccy-signet-precize-alifix-utiutility-alisma/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/taccy(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[2].split("", 2).join(".")},#{match[0]}.#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "#{token}#{version.csv.first.no_dots}/Taccy.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.taccy.sfl*",
    "~/Library/Caches/co.eclecticlight.Taccy",
    "~/Library/HTTPStorages/co.eclecticlight.Taccy",
    "~/Library/Preferences/co.eclecticlight.Taccy.plist",
    "~/Library/Saved Application State/co.eclecticlight.Taccy.savedState",
  ]
end
