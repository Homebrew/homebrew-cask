cask "photostickies" do
  version "6.0.1"
  sha256 "8b653653c51bea69e0b46f177da770fdee8dc3a41e01a18a68165f226a618236"

  url "https://download.devontechnologies.com/download/freeware/photostickies/#{version}/PhotoStickies.app.zip"
  name "PhotoStickies"
  desc "Show photos or camera feeds on the desktop"
  homepage "https://www.devontechnologies.com/apps/freeware"

  livecheck do
    url "https://api.devontechnologies.com/1/apps/updates.plist.php?product=PhotoStickies&version=#{version}"
    strategy :xml do |xml|
      version = xml.elements["//key[text()='PhotoStickies']"]&.next_element&.text
      next if version.blank?

      version.strip
    end
  end

  app "PhotoStickies.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.grunenberg.PhotoStickies.sfl*",
    "~/Library/Caches/PhotoStickies",
    "~/Library/HTTPStorages/org.grunenberg.PhotoStickies",
    "~/Library/Preferences/org.grunenberg.PhotoStickies.plist",
    "~/Library/Saved Application State/org.grunenberg.PhotoStickies.savedState",
  ]
end
