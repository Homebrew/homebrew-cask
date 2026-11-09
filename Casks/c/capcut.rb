cask "capcut" do
  version "9.7.1.4778"
  sha256 "ad939b4c113227808947757b3fcd1420636e7d411a0e9ff0ee34d330ff8a59c6"

  url "https://sf16-web-tos-buz.capcutstatic.com/obj/capcut-web-buz-sg/packages/CapCut_#{version.dots_to_underscores}_capcutpc_0_creatortool_nosandbox.dmg"
  name "CapCut"
  desc "Video editing and image design platform"
  homepage "https://www.capcut.com/"

  livecheck do
    url "https://editor-api-sg.capcutapi.com/service/settings/v3/?aid=359289&device_platform=mac&channel=capcutpc_0&version_code=1&os_version=26.4&region=GB&traffic_type=release"
    regex(/CapCut[._-]v?(\d+(?:[._]\d+)+).+?\.dmg/i)
    strategy :json do |json, regex|
      url = json.dig("data", "settings", "update_reminder", "lastest_stable_url")
      next if url.blank?

      match = url.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  depends_on :macos

  app "CapCut.app"

  uninstall quit: "com.lemon.lvoverseas"

  zap trash: [
    "~/Library/Application Scripts/com.lemon.lvoverseas",
    "~/Library/Containers/com.lemon.lvoverseas",
    "~/Library/Group Containers/22MMUN2RN5.lv",
    "~/Library/HTTPStorages/com.lemon.lvoverseas",
    "~/Library/Preferences/com.capcut.CapCut.plist",
    "~/Library/Preferences/com.lemon.lvoverseas.plist",
  ]
end
