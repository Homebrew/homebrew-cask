cask "hapigo" do
  version "2.19.3"
  sha256 "ba771c398b316a5d3db1442ad533c16c1336f940edc4b67bec23ce4427f53649"

  url "https://dl.hapigo.com/HapiGo_#{version}.dmg"
  name "HapiGo"
  desc "Application launcher and productivity software"
  homepage "https://www.hapigo.com/"

  livecheck do
    url "https://hapigo.com/update/cast.plist"
    strategy :xml do |xml|
      xml.get_elements("//key[text()='version']").map { |item| item.next_element&.text&.strip }
    end
  end

  auto_updates true

  app "HapiGo.app"

  zap trash: [
    "~/Library/Application Support/Hapigo",
    "~/Library/Caches/com.xunyong.hapigo",
    "~/Library/Caches/Hapigo",
    "~/Library/HTTPStorages/com.xunyong.hapigo",
    "~/Library/HTTPStorages/com.xunyong.hapigo.binarycookies",
    "~/Library/Preferences/com.xunyong.hapigo.plist",
    "~/Library/Preferences/com.xunyong.hapigofind.plist",
    "~/Library/WebKit/com.xunyong.hapigo",
  ]
end
