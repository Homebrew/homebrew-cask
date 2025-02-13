cask "hapigo" do
  version "2.16.1"
  sha256 "0f400ae5760e5d44ce014231d16937176c1ff1fc0039658c21feee0050d753c7"

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
  depends_on macos: ">= :catalina"

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
