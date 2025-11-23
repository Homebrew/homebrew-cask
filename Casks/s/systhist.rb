cask "systhist" do
  version "1.21,2025.06"
  sha256 "2229b4cf48626abf6be6eb55a780d1393fb07af03966306e87a09bbd98e22fe8"

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/systhist#{version.csv.first.no_dots}.zip"
  name "SystHist"
  desc "Lists full system and security update installation history"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='SystHist']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      url = item.elements["key[text()='URL']"]&.next_element&.text
      match = url.strip.match(regex) if url
      next if version.blank? || match.blank?

      "#{version.strip},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "systhist#{version.csv.first.no_dots}/SystHist.app"

  zap trash: [
    "~/Library/Caches/co.eclecticlight.SystHist",
    "~/Library/HTTPStorages/co.eclecticlight.SystHist",
    "~/Library/Preferences/co.eclecticlight.SystHist.plist",
    "~/Library/Saved Application State/co.eclecticlight.SystHist.savedState",
  ]
end
