cask "capcut" do
  version "9.0.0.4346"
  sha256 "e1015de3ec46022f7797eee2144f3eb4853d92a6b88e0bee408a38fa9dcfb07f"

  url "https://sf16-web-tos-buz.capcutstatic.com/obj/capcut-web-buz-sg/packages/CapCut_#{version.dots_to_underscores}_capcutpc_0_creatortool.dmg",
      verified: "sf16-web-tos-buz.capcutstatic.com/obj/capcut-web-buz-sg/packages/"
  name "CapCut"
  desc "All-in-one video editor and maker"
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

  zap trash: [
    "~/Library/Application Scripts/com.lemon.lvoverseas",
    "~/Library/Containers/com.lemon.lvoverseas",
    "~/Library/Group Containers/22MMUN2RN5.lv",
  ]
end
