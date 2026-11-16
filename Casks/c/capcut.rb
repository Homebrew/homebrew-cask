cask "capcut" do
  version "9.8.0.4799"
  sha256 "174d22264055e67047c0f0a495c3c7ac0e6681dfe80dac31c80f9741b12204e1"

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
