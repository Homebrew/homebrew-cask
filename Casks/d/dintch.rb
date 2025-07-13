cask "dintch" do
  version "1.8,2025.07"
  sha256 "4f336dcfc77fcc2c253a1d3b0684a47a1281f6e9fb9bb1b70040b6d27f5edd41"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/dintch#{version.csv.first.no_dots}.zip"
  name "Dintch"
  desc "Check the integrity of your files"
  homepage "https://eclecticlight.co/dintch"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='Dintch']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      url = item.elements["key[text()='URL']"]&.next_element&.text
      match = url.strip.match(regex) if url
      next if version.blank? || match.blank?

      "#{version.strip},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "dintch#{version.csv.first.no_dots}/Dintch.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.dintch.sfl*",
    "~/Library/Caches/co.eclecticlight.Dintch",
    "~/Library/HTTPStorages/co.eclecticlight.Dintch",
    "~/Library/Preferences/co.eclecticlight.Dintch.plist",
    "~/Library/Saved Application State/co.eclecticlight.Dintch.savedState",
  ]
end
