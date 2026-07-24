cask "lingon-pro" do
    version "10.2.4"
    sha256 "21d214de420d191b21413c53c2b50d8a5aef33fbc4c89dc0729faddc8064393b"

  url "https://www.peterborgapps.com/downloads/LingonPro#{version.major}.zip"
  name "Lingon Pro"
  desc "Automator software to start apps, run scripts or commands and more"
  homepage "https://www.peterborgapps.com/lingon/"

  livecheck do
    url "https://www.peterborgapps.com/updates/lingonpro#{version.major}.plist"
    strategy :xml do |xml|
      xml.get_elements("//key[text()='version']").map { |item| item.next_element&.text&.strip }
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Lingon Pro.app"

  zap trash: [
    "~/Library/Caches/com.peterborgapps.LingonPro#{version.major}",
    "~/Library/Group Containers/*.com.peterborgapps.Lingon",
    "~/Library/HTTPStorages/com.peterborgapps.LingonPro#{version.major}",
  ]
end
