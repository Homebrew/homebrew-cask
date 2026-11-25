cask "easyfind" do
  version "6.0"
  sha256 "4cc13fc5ff8eec0a217e4058078caf7bb6af3bf332a09a779738613790731a11"

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

  depends_on macos: :sequoia

  app "EasyFind.app"

  zap trash: [
    "~/Library/Application Support/EasyFind",
    "~/Library/Caches/org.grunenberg.EasyFind",
    "~/Library/HTTPStorages/org.grunenberg.EasyFind",
    "~/Library/Preferences/org.grunenberg.EasyFind.plist",
    "~/Library/Saved Application State/org.grunenberg.EasyFind.savedState",
  ]
end
