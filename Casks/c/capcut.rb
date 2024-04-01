cask "capcut" do
  version "3.3.0.1159"
  sha256 "26c253719a61eae679a2923121a83d0a39b98d920a5c57f3e00d66224986c867"

  url "https://lf16-capcut.faceulv.com/obj/capcutpc-packages-us/packages/CapCut_#{version.dots_to_underscores}_capcutpc_0_creatortool.dmg",
      verified: "lf16-capcut.faceulv.com/obj/capcutpc-packages-us/packages/"
  name "CapCut"
  desc "Video editing and image design platform"
  homepage "https://www.capcut.com/"

  livecheck do
    url "https://editor-api.capcutapi.com/service/settings/v3/?aid=359289&from_aid=359289&device_platform=mac&from_channel=capcutpc_0"
    regex(/CapCut[._-]v?(\d+(?:[._]\d+)+).+?\.dmg/i)
    strategy :json do |json, regex|
      url = json.dig("data", "settings", "installer_downloader_config", "url")
      next if url.blank?

      match = url.match(regex)
      next if match.blank?

      match[1].tr("_", ".")
    end
  end

  depends_on macos: ">= :mojave"

  app "CapCut.app"

  zap trash: [
    "~/Library/Application Scripts/com.lemon.lvoverseas",
    "~/Library/Containers/com.lemon.lvoverseas",
    "~/Library/Group Containers/22MMUN2RN5.lv",
    "~/Library/Group Containers/22MMUN2RN5.ve",
  ]
end
