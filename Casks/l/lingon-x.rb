cask "lingon-x" do
  on_catalina :or_older do
    version "8.4.9"
    sha256 "c1c839e8dc13bd295f2080980c5bea22299c33f3333b7c6981161b46d6f021d8"
  end
  on_big_sur do
    version "8.4.9"
    sha256 "c1c839e8dc13bd295f2080980c5bea22299c33f3333b7c6981161b46d6f021d8"
  end
  on_monterey :or_newer do
    version "9.6.6"
    sha256 "7cafd1fc98cd23662f0670eed996698dccc98762fe1a284036ee76132553e7f3"
  end

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  name "Lingon X"
  desc "Automator software to start apps, run scripts or commands and more"
  homepage "https://www.peterborgapps.com/lingon/"

  livecheck do
    url "https://www.peterborgapps.com/updates/lingonx#{version.major}.plist"
    strategy :xml do |xml|
      xml.get_elements("//key[text()='version']").map { |item| item.next_element&.text&.strip }
    end
  end

  auto_updates true

  app "Lingon X.app"

  zap trash: [
    "~/Library/Application Scripts/com.peterborgapps.LingonX*",
    "~/Library/Application Support/Lingon X",
    "~/Library/Containers/com.peterborgapps.LingonX*",
  ]
end
