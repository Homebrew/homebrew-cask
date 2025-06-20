cask "easyfind" do
  version "5.0.2"
  sha256 "1539a562539e3b3a243da864fddee0351a4c7d109aa9dcae436775ecbb288fc9"

  url "https://download.devontechnologies.com/download/freeware/easyfind/#{version}/EasyFind.app.zip"
  name "EasyFind"
  desc "Find files, folders, or contents in any file"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url "https://api.devontechnologies.com/1/apps/updates.plist.php?product=EasyFind&version=#{version}"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='EasyFind']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  no_autobump! because: :requires_manual_review

  app "EasyFind.app"

  zap trash: [
    "~/Library/Application Support/EasyFind",
    "~/Library/Caches/org.grunenberg.EasyFind",
    "~/Library/HTTPStorages/org.grunenberg.EasyFind",
    "~/Library/Preferences/org.grunenberg.EasyFind.plist",
    "~/Library/Saved Application State/org.grunenberg.EasyFind.savedState",
  ]
end
