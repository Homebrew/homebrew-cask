cask "revisionist" do
  version "1.9,2023.06"
  sha256 "b63dbefe2587abe471ec08361d2f828040e2e654027982cfa3b42f632fc89b97"

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
