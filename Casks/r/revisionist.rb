cask "revisionist" do
  version "1.10,2025.06"
  sha256 "e01335c4fb1fa61b03f8d4714e758d206aa439ff260ae2cd1c0c84e307b63c0f"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/#{token}#{version.csv.first.no_dots}.zip"
  name "Revisionist"
  desc "Opens up the full power of the versioning system"
  homepage "https://eclecticlight.co/revisionist-deeptools/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='Revisionist']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      url = item.elements["key[text()='URL']"]&.next_element&.text
      match = url.strip.match(regex) if url
      next if version.blank? || match.blank?

      "#{version.strip},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "revisionist#{version.csv.first.no_dots}/Revisionist.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.revisionist.sfl*",
    "~/Library/Caches/co.eclecticlight.Revisionist",
    "~/Library/Caches/com.apple.helpd/Generated/co.eclecticlight.Revisionist.help*",
    "~/Library/HTTPStorages/co.eclecticlight.Revisionist",
    "~/Library/Preferences/co.eclecticlight.Revisionist.plist",
    "~/Library/Saved Application State/co.eclecticlight.Revisionist.savedState",
  ]
end
