cask "lingon-pro" do
  version "10.3.1"
  sha256 :no_check

  url "https://www.peterborgapps.com/downloads/LingonPro#{version.major}.zip"
  name "Lingon Pro"
  desc "Automator software to start apps, run scripts or commands and more"
  homepage "https://www.peterborgapps.com/lingon/"

  livecheck do
    url "https://www.peterborgapps.com/updates/lingonpro#{version.major}.plist"
    strategy :xml do |xml|
      key = REXML::XPath.first(xml, "//dict/key[text()='version']")
      key.next_element.text
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Lingon Pro.app"

  uninstall quit: "com.peterborgapps.LingonPro#{version.major}"

  zap trash: [
    "~/Library/Caches/com.peterborgapps.LingonPro#{version.major}",
    "~/Library/HTTPStorages/com.peterborgapps.LingonPro#{version.major}",
    "~/Library/Preferences/com.peterborgapps.LingonPro#{version.major}.plist",
  ]
end
