cask "hapigo" do
  version "2.19.1"
  sha256 "33d514e2a6d4570d66a269d14fbb7bcd18edae77386ff6835b8575edadddf0e0"

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
