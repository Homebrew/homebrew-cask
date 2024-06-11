cask "silentknight" do
  on_mojave :or_older do
    version "1.21,2022.06"
    sha256 "c1cbb734f620e073f1c08c473edaa036c2b5ccdca02baa99ca117f86c10ad505"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: ">= :el_capitan"
  end
  on_catalina :or_newer do
    version "2.09,2024.06"
    sha256 "a3d33fef8edfdbc5e3b5c88235f12d1f84ca6a7b2dd60204a56a93677a261453"

    livecheck do
      url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
      regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
      strategy :xml do |xml, regex|
        item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='SilentKnight#{version.major}']]"]
        next unless item

        version = item.elements["key[text()='Version']"]&.next_element&.text&.strip
        match = item.elements["key[text()='URL']"]&.next_element&.text&.strip&.match(regex)
        next if version.blank? || match.blank?

        # Temporarily override the version to account for a one-off mismatch
        version = "2.09" if version == "2.9"

        "#{version},#{match[1]}.#{match[2]}"
      end
    end

    depends_on macos: ">= :catalina"
  end

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.csv.second.major}/#{version.csv.second.minor}/silentknight#{version.csv.first.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "SilentKnight"
  desc "Automatically checks computer's security"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  app "silentknight#{version.csv.first.no_dots}/SilentKnight.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.silentknight.sfl*",
    "~/Library/Caches/co.eclecticlight.SilentKnight",
    "~/Library/HTTPStorages/co.eclecticlight.SilentKnight",
    "~/Library/Preferences/co.eclecticlight.SilentKnight.plist",
    "~/Library/Saved Application State/co.eclecticlight.SilentKnight.savedState",
  ]
end
