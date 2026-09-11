cask "silentknight" do
  version "3.02,2026.07"
  sha256 "41be69cccdcedb325edbe825b86bdea24b1bcfbbcde8bea9e57e7a82326ea157"

  # Upstream zero-pads the minor version in the no-dot filename version to two
  # digits (e.g. 2.9 is 209). We only need this workaround while the minor
  # version is less than two digits, so we should be able to switch back to
  # `version.csv.first.no_dots` in the filename with version 2.10+.`
  no_dot_version = version.csv.first.split(".").each_with_index.map do |n, i|
    (i < 1 || n.length > 1) ? n : n.rjust(2, "0")
  end.join

  url "https://eclecticlight.co/wp-content/uploads/#{version.csv.second.major}/#{version.csv.second.minor}/sk#{no_dot_version}.zip"
  name "SilentKnight"
  desc "Automatically checks computer's security"
  homepage "https://eclecticlight.co/lockrattler-systhist/"

  livecheck do
    url "https://raw.githubusercontent.com/hoakleyelc/updates/master/eclecticapps.plist"
    regex(%r{/(\d+)/(\d+)/[^/]+?$}i)
    strategy :xml do |xml, regex|
      item = xml.elements["//dict[key[text()='AppName']/following-sibling::*[1][text()='SilentKnight#{version.major}']]"]
      next unless item

      version = item.elements["key[text()='Version']"]&.next_element&.text
      url = item.elements["key[text()='URL']"]&.next_element&.text
      match = url.strip.match(regex) if url
      next if version.blank? || match.blank?

      "#{version.strip},#{match[1]}.#{match[2]}"
    end
  end

  depends_on macos: :sequoia

  app "sk#{no_dot_version}/SilentKnight#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/co.eclecticlight.silentknight.sfl*",
    "~/Library/Caches/co.eclecticlight.SilentKnight",
    "~/Library/HTTPStorages/co.eclecticlight.SilentKnight",
    "~/Library/Preferences/co.eclecticlight.SilentKnight.plist",
    "~/Library/Saved Application State/co.eclecticlight.SilentKnight.savedState",
  ]
end
