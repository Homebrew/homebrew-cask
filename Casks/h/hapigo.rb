cask "hapigo" do
  version "2.22.0"
  sha256 "5a33ab4ff0892e8bbbfd95396d8b26654e1ce6ae8e88602e7b8f41360703abbe"

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
  depends_on macos: :monterey

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
