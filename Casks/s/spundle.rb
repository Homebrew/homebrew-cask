cask "spundle" do
  version "1.9,2025.06"
  sha256 "bdeacea6b229c9fb51121c5e0f7180c23baa38a5be0c67eee6cb60714bb42ac4"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/spundle#{version.csv.first.no_dots}.zip"
  name "spundle"
  desc "Create, resize and compact sparse bundles"
  homepage "https://eclecticlight.co/dintch/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='Spundle']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      url = item.elements["key[text()='URL']"]&.next_element&.text
      match = url.strip.match(regex) if url
      next if version.blank? || match.blank?

      "#{version.strip},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "spundle#{version.csv.first.no_dots}/Spundle.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.spundle.sfl*",
    "~/Library/Caches/co.eclecticlight.Spundle",
    "~/Library/HTTPStorages/co.eclecticlight.Spundle",
    "~/Library/Preferences/co.eclecticlight.Spundle.plist",
    "~/Library/Saved Application State/co.eclecticlight.Spundle.savedState",
  ]
end
