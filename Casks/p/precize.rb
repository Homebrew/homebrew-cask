cask "precize" do
  version "1.15,2024.08"
  sha256 "59339442a7e662d6de5eafb2779b6811a6d27e0919daa71924b921125c56f66c"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/precize#{version.csv.first.no_dots}.zip"
  name "Precize"
  desc "Detailed information for files, bundles and folders"
  homepage "https://eclecticlight.co/taccy-signet-precize-alifix-utiutility-alisma/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='Precize']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      url = item.elements["key[text()='URL']"]&.next_element&.text
      match = url.strip.match(regex) if url
      next if version.blank? || match.blank?

      "#{version.strip},#{match[1]}.#{match[2]}"
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
